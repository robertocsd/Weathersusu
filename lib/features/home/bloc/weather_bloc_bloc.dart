import 'package:challenge_esusu/core/home/repository/i_weather_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:challenge_esusu/domain/daily_summary.dart';
import 'package:challenge_esusu/domain/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherState> {
  final IWeatherRepository weatherRepository;
  final IGeocodingRepository geocodingRepository;

  WeatherBlocBloc(this.weatherRepository, this.geocodingRepository)
      : super(const WeatherInitialState(WeatherModel())) {
    on<GetActualPositionEvent>((event, emit) async {
      emit(WeatherLoadingState(state.model));
      try {
        Position position = await _determinePosition();
        add(FetchWeather(position.latitude, position.longitude, 'F'));
      } catch (e) {
        emit(WeatherPermissionDeniedState(state.model));
      }
    });
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoadingState(state.model));
      try {
        List<Placemark> placemarks = await geocodingRepository
            .placemarkFromCoordinates(event.latitude, event.longitude);

        Placemark place = placemarks.first;
        var weather = await weatherRepository.fetchWeatherForecast(
            event.latitude, event.longitude, event.tempUnit);
        List<DailyWeatherSummary> list = getDailyWeatherSummary(weather.daily);

        HourlyWeatherData next24Hours = getHourlyWeatherForNext24Hours(weather);
        emit(WeatherBlocSuccess(state.model.copyWith(
            weather: weather,
            next5days: list,
            place: place,
            next24hours: next24Hours,
            actualLatitude: event.latitude.toString(),
            actualLongitude: event.longitude.toString(),
            tempUnit: event.tempUnit)));
      } catch (e) {
        emit(WeatherBlocFailure(state.model));
      }
    });
  }

//function helpers
  List<DailyWeatherSummary> getDailyWeatherSummary(DailyWeatherData data) {
    var summaries = <DailyWeatherSummary>[];
    for (int i = 1; i < data.time.length; i++) {
      final date = DateTime.parse(data.time[i]);
      final dayName = DateFormat('EEE').format(date);
      final maxTemp = data.apparent_temperature_max[i].toInt();
      final minTemp = data.apparent_temperature_min[i].toInt();

      summaries.add(DailyWeatherSummary(
        dayName: dayName,
        maxTemperature: maxTemp,
        minTemperature: minTemp,
      ));
    }

    return summaries;
  }

  HourlyWeatherData getHourlyWeatherForNext24Hours(WeatherForecast forecast) {
    DateTime now = DateTime.now();

    DateFormat dateFormat = DateFormat('yyyy-MM-ddTHH:mm');

    int currentIndex = forecast.hourly.time.indexWhere(
      (t) => dateFormat.parse(t).isAfter(now),
    );

    if (currentIndex == -1) {
      throw Exception('No data.');
    }

    int endIndex = currentIndex + 24;
    endIndex = endIndex < forecast.hourly.time.length
        ? endIndex
        : forecast.hourly.time.length;

    HourlyWeatherData next24HoursData = HourlyWeatherData(
      time: forecast.hourly.time.sublist(currentIndex, endIndex),
      temperature_2m:
          forecast.hourly.temperature_2m.sublist(currentIndex, endIndex),
      relative_humidity_2m:
          forecast.hourly.relative_humidity_2m.sublist(currentIndex, endIndex),
      precipitation:
          forecast.hourly.precipitation.sublist(currentIndex, endIndex),
      weathercode: forecast.hourly.weathercode.sublist(currentIndex, endIndex),
      cloudcover: forecast.hourly.cloudcover.sublist(currentIndex, endIndex),
      wind_speed_10m:
          forecast.hourly.wind_speed_10m.sublist(currentIndex, endIndex),
    );

    return next24HoursData;
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    try {
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      return await Geolocator.getCurrentPosition();
    } catch (e) {
      throw Exception('Error getting location');
    }
  }
}
