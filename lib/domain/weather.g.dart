// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherForecastImpl _$$WeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezone_abbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      utc_offset_seconds: json['utc_offset_seconds'] as int,
      current_weather: CurrentWeather.fromJson(
          json['current_weather'] as Map<String, dynamic>),
      hourly:
          HourlyWeatherData.fromJson(json['hourly'] as Map<String, dynamic>),
      daily: DailyWeatherData.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherForecastImplToJson(
        _$WeatherForecastImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezone_abbreviation,
      'elevation': instance.elevation,
      'utc_offset_seconds': instance.utc_offset_seconds,
      'current_weather': instance.current_weather,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      time: json['time'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      windspeed: (json['windspeed'] as num).toDouble(),
      winddirection: json['winddirection'] as int,
      is_day: json['is_day'] as int,
      weathercode: json['weathercode'] as int,
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature': instance.temperature,
      'windspeed': instance.windspeed,
      'winddirection': instance.winddirection,
      'is_day': instance.is_day,
      'weathercode': instance.weathercode,
    };

_$HourlyWeatherDataImpl _$$HourlyWeatherDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HourlyWeatherDataImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature_2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      relative_humidity_2m: (json['relative_humidity_2m'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      precipitation: (json['precipitation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weathercode:
          (json['weathercode'] as List<dynamic>).map((e) => e as int).toList(),
      cloudcover:
          (json['cloudcover'] as List<dynamic>).map((e) => e as int).toList(),
      wind_speed_10m: (json['wind_speed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$HourlyWeatherDataImplToJson(
        _$HourlyWeatherDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature_2m,
      'relative_humidity_2m': instance.relative_humidity_2m,
      'precipitation': instance.precipitation,
      'weathercode': instance.weathercode,
      'cloudcover': instance.cloudcover,
      'wind_speed_10m': instance.wind_speed_10m,
    };

_$DailyWeatherDataImpl _$$DailyWeatherDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyWeatherDataImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      sunrise:
          (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
      sunset:
          (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
      precipitation_sum: (json['precipitation_sum'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      apparent_temperature_max:
          (json['apparent_temperature_max'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      apparent_temperature_min:
          (json['apparent_temperature_min'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
    );

Map<String, dynamic> _$$DailyWeatherDataImplToJson(
        _$DailyWeatherDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_sum': instance.precipitation_sum,
      'apparent_temperature_max': instance.apparent_temperature_max,
      'apparent_temperature_min': instance.apparent_temperature_min,
    };
