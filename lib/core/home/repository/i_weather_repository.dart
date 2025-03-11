// core/repository/i_weather_repository.dart

import 'package:challenge_esusu/domain/weather.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:geocoding/geocoding.dart';

abstract class IWeatherRepository {
  Future<WeatherForecast> fetchWeatherForecast(
      double latitude, double longitude, String temperatureUnit);
}

abstract class IGeocodingRepository {
  Future<List<Placemark>> placemarkFromCoordinates(
      double latitude, double longitude);
}

class GeocodingRepositoryImpl implements IGeocodingRepository {
  @override
  Future<List<Placemark>> placemarkFromCoordinates(
      double latitude, double longitude) {
    return geo.placemarkFromCoordinates(latitude, longitude);
  }
}
