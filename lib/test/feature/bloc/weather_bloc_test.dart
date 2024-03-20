import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:challenge_esusu/core/home/repository/i_weather_repository.dart';
import 'package:challenge_esusu/domain/weather.dart';
import 'package:challenge_esusu/features/home/bloc/weather_bloc_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mocktail/mocktail.dart';
import 'package:geocoding/geocoding.dart';

class MockWeatherRepository extends Mock implements IWeatherRepository {}

class MockGeocodingRepository extends Mock implements IGeocodingRepository {}

class MockGeolocatorPlatform extends Mock implements GeolocatorPlatform {}

void main() {
  late MockWeatherRepository mockWeatherRepository;
  late MockGeocodingRepository mockGeocodingRepository;
  late MockGeolocatorPlatform mockGeolocatorPlatform;

  late WeatherBlocBloc bloc;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    mockGeocodingRepository = MockGeocodingRepository();
    mockGeolocatorPlatform = MockGeolocatorPlatform();

    bloc = WeatherBlocBloc(mockWeatherRepository, mockGeocodingRepository);

    when(() => mockGeocodingRepository.placemarkFromCoordinates(any(), any()))
        .thenAnswer((_) async => [
              const Placemark(
                name: "Mock Place",
                isoCountryCode: "US",
                country: "United States",
                postalCode: "10001",
                administrativeArea: "New York",
                locality: "New York",
                street: "Mock Street",
              ),
            ]);

    when(() => mockWeatherRepository.fetchWeatherForecast(any(), any(), any()))
        .thenAnswer((_) async => WeatherForecast(
            latitude: 0.0,
            longitude: 0.0,
            timezone: "GMT",
            elevation: 0.0,
            utc_offset_seconds: 0,
            current_weather: CurrentWeather(
              time: "",
              temperature: 20.0,
              windspeed: 5.0,
              winddirection: 180,
              is_day: 1,
              weathercode: 100,
            ),
            hourly: HourlyWeatherData(
              time: List.generate(
                  24,
                  (index) =>
                      "2024-03-19T${index.toString().padLeft(2, '0')}:00Z"),
              temperature_2m:
                  List.generate(24, (_) => 10.0 + Random().nextDouble() * 5),
              relative_humidity_2m: List.generate(24, (_) => 80),
              precipitation: List.generate(24, (_) => Random().nextDouble()),
              weathercode: List.generate(24, (_) => 100),
              cloudcover: List.generate(24, (_) => 20),
              wind_speed_10m: List.generate(24, (_) => 5.0),
            ),
            daily: DailyWeatherData(
              time: ["2024-03-19"],
              sunrise: ["2024-03-19T06:00Z"],
              sunset: ["2024-03-19T18:00Z"],
              precipitation_sum: [0.0],
              apparent_temperature_max: [15.0],
              apparent_temperature_min: [5.0],
            ),
            timezone_abbreviation: ''));
  });

  blocTest<WeatherBlocBloc, WeatherState>(
    'emits [WeatherLoadingState, WeatherBlocSuccess]',
    build: () => bloc,
    act: (bloc) => bloc.add(const FetchWeather(37.7749, -122.4194, 'F')),
    expect: () => [isA<WeatherLoadingState>(), isA<WeatherBlocSuccess>()],
  );

  blocTest<WeatherBlocBloc, WeatherState>(
    'emits [WeatherLoadingState, WeatherPermissionDeniedState] when GetActualPositionEvent is added and permission is denied',
    setUp: () {
      when(() => mockGeolocatorPlatform.checkPermission())
          .thenAnswer((_) async => LocationPermission.denied);
    },
    build: () => bloc,
    act: (bloc) => bloc.add(const GetActualPositionEvent()),
    expect: () =>
        [isA<WeatherLoadingState>(), isA<WeatherPermissionDeniedState>()],
  );
}
