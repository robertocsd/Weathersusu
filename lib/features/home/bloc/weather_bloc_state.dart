part of 'weather_bloc_bloc.dart';

abstract class WeatherState extends Equatable {
  final WeatherModel model;
  const WeatherState(this.model);

  @override
  List<Object> get props => [model];
}

class WeatherInitialState extends WeatherState {
  const WeatherInitialState(WeatherModel model) : super(model);
}

class WeatherLoadingState extends WeatherState {
  const WeatherLoadingState(WeatherModel model) : super(model);
}

class WeatherLoadedState extends WeatherState {
  const WeatherLoadedState(WeatherModel model) : super(model);
}

class WeatherErrorState extends WeatherState {
  const WeatherErrorState(WeatherModel model) : super(model);
}

class WeatherPermissionDeniedState extends WeatherState {
  const WeatherPermissionDeniedState(WeatherModel model) : super(model);
}

class WeatherBlocSuccess extends WeatherState {
  const WeatherBlocSuccess(WeatherModel model) : super(model);
}

class WeatherBlocFailure extends WeatherState {
  const WeatherBlocFailure(WeatherModel model) : super(model);
}

class WeatherModel extends Equatable {
  final WeatherForecast? weather;
  final Placemark? place;
  final HourlyWeatherData? next24hours;
  final List<DailyWeatherSummary>? next5days;
  final String? tempUnit;
  final String? actualLatitude;
  final String? actualLongitude;

  const WeatherModel({
    this.weather,
    this.place,
    this.next24hours,
    this.next5days,
    this.tempUnit,
    this.actualLatitude,
    this.actualLongitude,
  });

  WeatherModel copyWith({
    WeatherForecast? weather,
    Placemark? place,
    HourlyWeatherData? next24hours,
    List<DailyWeatherSummary>? next5days,
    String? tempUnit,
    String? actualLatitude,
    String? actualLongitude,
  }) =>
      WeatherModel(
        weather: weather ?? this.weather,
        place: place ?? this.place,
        next24hours: next24hours ?? this.next24hours,
        next5days: next5days ?? this.next5days,
        tempUnit: tempUnit ?? this.tempUnit,
        actualLatitude: actualLatitude ?? this.actualLatitude,
        actualLongitude: actualLongitude ?? this.actualLongitude,
      );

  @override
  List<Object?> get props => [
        weather,
        place,
        next24hours,
        next5days,
        tempUnit,
        actualLatitude,
        actualLongitude
      ];
}
