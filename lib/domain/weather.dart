// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class WeatherForecast with _$WeatherForecast {
  factory WeatherForecast({
    required double latitude,
    required double longitude,
    required String timezone,
    required String timezone_abbreviation,
    required double elevation,
    required int utc_offset_seconds,
    required CurrentWeather current_weather,
    required HourlyWeatherData hourly,
    required DailyWeatherData daily,
  }) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}

@freezed
class CurrentWeather with _$CurrentWeather {
  factory CurrentWeather({
    required String time,
    required double temperature,
    required double windspeed,
    required int winddirection,
    required int is_day,
    required int weathercode,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
class HourlyWeatherData with _$HourlyWeatherData {
  factory HourlyWeatherData({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature_2m,
    @JsonKey(name: 'relative_humidity_2m')
    required List<int> relative_humidity_2m,
    required List<double> precipitation,
    required List<int> weathercode,
    required List<int> cloudcover,
    @JsonKey(name: 'wind_speed_10m') required List<double> wind_speed_10m,
  }) = _HourlyWeatherData;

  factory HourlyWeatherData.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherDataFromJson(json);
}

@freezed
class DailyWeatherData with _$DailyWeatherData {
  factory DailyWeatherData({
    required List<String> time,
    required List<String> sunrise,
    required List<String> sunset,
    required List<double> precipitation_sum,
    required List<double> apparent_temperature_max,
    required List<double> apparent_temperature_min,
  }) = _DailyWeatherData;

  factory DailyWeatherData.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherDataFromJson(json);
}

extension HourlyWeatherDataX on HourlyWeatherData {
  List<HourlyForecast> get hourlyForecasts {
    if (time.length != temperature_2m.length ||
        time.length != relative_humidity_2m.length ||
        time.length != wind_speed_10m.length ||
        time.length != precipitation.length ||
        time.length != weathercode.length ||
        time.length != cloudcover.length) {
      throw Exception('Inconsistent data');
    }

    // Generar la lista de pronósticos
    return List.generate(time.length, (index) {
      return HourlyForecast(
        time: DateTime.parse(time[index]),
        temperature: temperature_2m[index],
        relativeHumidity: relative_humidity_2m[index],
        windSpeed: wind_speed_10m[index],
        precipitation: precipitation[index],
        weathercode: weathercode[index],
        cloudcover: cloudcover[index],
      );
    });
  }
}

@freezed
class HourlyForecast with _$HourlyForecast {
  factory HourlyForecast({
    required DateTime time,
    required double temperature,
    required int relativeHumidity,
    required double windSpeed,
    required double precipitation,
    required int weathercode,
    required int cloudcover,
  }) = _HourlyForecast;
}
