import 'package:challenge_esusu/core/home/repository/i_weather_repository.dart';
import 'package:challenge_esusu/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:challenge_esusu/features/home/bloc/weather_bloc_bloc.dart';
import 'package:challenge_esusu/features/home/pages/home_screen.dart';
import 'package:challenge_esusu/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(context),
      debugShowCheckedModeBanner: false,
      home: BlocProvider<WeatherBlocBloc>(
        create: (context) => WeatherBlocBloc(
            getIt<IWeatherRepository>(), getIt<IGeocodingRepository>())
          ..add(const GetActualPositionEvent()),
        child: const HomeScreen(),
      ),
    );
  }
}
