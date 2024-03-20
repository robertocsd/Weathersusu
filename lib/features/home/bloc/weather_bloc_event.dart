part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocEvent extends Equatable {
  const WeatherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherBlocEvent {
  final double latitude;
  final double longitude;
  final String tempUnit;

  const FetchWeather(this.latitude, this.longitude, this.tempUnit);

  @override
  List<Object> get props => [latitude, longitude];
}

class GetActualPositionEvent extends WeatherBlocEvent {
  const GetActualPositionEvent();

  @override
  List<Object> get props => [];
}
