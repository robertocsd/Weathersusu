import 'package:challenge_esusu/core/home/repository/i_weather_repository.dart';
import 'package:challenge_esusu/domain/weather.dart';
import 'package:dio/dio.dart';

class WeatherRepository implements IWeatherRepository {
  final _dio = Dio();

  @override
  Future<WeatherForecast> fetchWeatherForecast(
      double latitude, double longitude, String temperatureUnit) async {
    const String url = 'https://api.open-meteo.com/v1/forecast';

    try {
      final response = await _dio.get(url, queryParameters: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'current_weather': 'true',
        'hourly':
            'temperature_2m,relative_humidity_2m,precipitation,weathercode,cloudcover,wind_speed_10m', // Añade precipitación y código del clima
        'daily':
            'sunrise,sunset,precipitation_sum,apparent_temperature_max,apparent_temperature_min', // Añade suma de precipitación diaria
        'timezone': 'auto',
        'temperature_unit': temperatureUnit == 'F' ? "fahrenheit" : "celsius"
      });
      if (response.statusCode == 200) {
        return WeatherForecast.fromJson(response.data);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to load weather data: $e');
    }
  }
}
