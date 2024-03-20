import 'package:challenge_esusu/features/home/bloc/weather_bloc_bloc.dart';
import 'package:flutter/material.dart';

class SomethignHappenedEmptyState extends StatelessWidget {
  final WeatherBlocBloc bloc;
  const SomethignHappenedEmptyState({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
              'Oh no! something happenned but dont worry its not your fault',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          TextButton(
              onPressed: () {
                bloc.add(const GetActualPositionEvent());
              },
              child: const Text('Try again!!!!',
                  style: TextStyle(color: Colors.white, fontSize: 20)))
        ],
      ),
    );
  }
}

class PermissionDeniedEmptyState extends StatelessWidget {
  const PermissionDeniedEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        child: Text(
          'Oh no! I dont have permissions! please, enable location services and come back again!.',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
