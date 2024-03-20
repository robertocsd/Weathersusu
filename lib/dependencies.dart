import 'package:challenge_esusu/core/home/repository/i_weather_repository.dart';
import 'package:challenge_esusu/core/search/repository/i_network_service.dart';
import 'package:challenge_esusu/features/home/bloc/weather_bloc_bloc.dart';
import 'package:challenge_esusu/features/home/data/get_weather.dart';
import 'package:challenge_esusu/features/search/bloc/search_bloc.dart';
import 'package:challenge_esusu/features/search/data/network_service.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ISearchRepository>(() => SearchRepository());
  getIt.registerFactory(() => SearchBloc(getIt<ISearchRepository>()));

  getIt.registerLazySingleton<IWeatherRepository>(() => WeatherRepository());
  getIt.registerLazySingleton<IGeocodingRepository>(
      () => GeocodingRepositoryImpl());

  getIt.registerFactory(() => WeatherBlocBloc(
      getIt<IWeatherRepository>(), getIt<IGeocodingRepository>()));
}
