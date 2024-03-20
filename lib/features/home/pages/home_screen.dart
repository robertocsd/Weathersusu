import 'dart:ui';

import 'package:challenge_esusu/features/home/bloc/weather_bloc_bloc.dart';
import 'package:challenge_esusu/features/home/pages/empty_states/empty_states.dart';
import 'package:challenge_esusu/features/home/pages/widgets/home_sections.dart';
import 'package:challenge_esusu/features/search/pages/location_search_screen.dart';
import 'package:challenge_esusu/helper/constants.dart';
import 'package:challenge_esusu/helper/weather_interpreter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBlocBloc>();
    final screenSize = MediaQuery.of(context).size;
    final circleSize = screenSize.width * 0.7;
    final circleOffset = screenSize.width * 0.75;
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(circleOffset / screenSize.width, -0.3),
              child: Container(
                height: circleSize,
                width: circleSize,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepPurple),
              ),
            ),
            Align(
              alignment: Alignment(-circleOffset / screenSize.width, -0.3),
              child: Container(
                height: circleSize,
                width: circleSize,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF673AB7)),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                height: circleSize,
                width:
                    circleSize * 2, // Asume el doble del tamaño para el ancho
                decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                key: const Key('homeScreen'),
                child: BlocBuilder<WeatherBlocBloc, WeatherState>(
                  builder: (context, state) {
                    if (state is WeatherBlocSuccess) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: kToolbarHeight,
                            ),
                            TextButton(
                              key: const Key('textButtonSearch'),
                              child: Text(
                                '📍 ${state.model.place!.locality}, ${state.model.place!.country}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () async {
                                var list = await showSearchModal(context);
                                if (list != null && mounted) {
                                  bloc.add(FetchWeather(
                                      list[1], list[0], state.model.tempUnit!));
                                }
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    state.model.weather!.current_weather
                                                .is_day ==
                                            1
                                        ? HomeScreenTexts.goodDay
                                        : HomeScreenTexts.goodNight,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        HomeScreenTexts.tempUnitF,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Switch(
                                          key: const Key('tempUnitSwitch'),
                                          value: state.model.tempUnit == 'C',
                                          onChanged: (e) {
                                            e
                                                ? bloc.add(FetchWeather(
                                                    double.parse(state
                                                        .model.actualLatitude!),
                                                    double.parse(state.model
                                                        .actualLongitude!),
                                                    'C'))
                                                : bloc.add(FetchWeather(
                                                    double.parse(state
                                                        .model.actualLatitude!),
                                                    double.parse(state.model
                                                        .actualLongitude!),
                                                    'F'));
                                          }),
                                      const Text(
                                        HomeScreenTexts.tempUnitC,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(HomeScreenAssets.getWeatherIcon(
                                state
                                    .model.weather!.current_weather.weathercode,
                                state.model.weather!.current_weather.windspeed
                                    .toInt())),
                            Center(
                              child: Text(
                                '${state.model.weather!.current_weather.temperature.toInt()}°${state.model.tempUnit}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 55,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Center(
                              child: Text(
                                DateFormat(HomeScreenTexts.dateFormatDay)
                                    .add_jm()
                                    .format(DateTime.parse(state
                                        .model.weather!.current_weather.time)),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              child: ListView.builder(
                                //key used in patrol test
                                key: const Key('next24hours'),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.model.next24hours!.time.length,
                                itemBuilder: (BuildContext context, int index) {
                                  var weatherCondition =
                                      interpretCommonWeatherConditions(
                                    state.model.next24hours!.weathercode[index],
                                    state.model.next24hours!
                                        .wind_speed_10m[index]
                                        .toInt(),
                                  );

                                  return SizedBox(
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/${weatherCondition.values.first}',
                                          height: 50,
                                        ),
                                        Text(
                                          DateFormat.jm().format(DateTime.parse(
                                              state.model.next24hours!
                                                  .time[index])),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "${state.model.next24hours!.temperature_2m[index].toInt()}°${state.model.tempUnit}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InfoSection(
                                    asset: HomeScreenAssets.sunIcon,
                                    value: DateFormat.jm().format(
                                        DateTime.parse(state
                                            .model.weather!.daily.sunrise[0])),
                                    name: HomeScreenTexts.sunrise,
                                  ),
                                  InfoSection(
                                    asset: HomeScreenAssets.moonIcon,
                                    value: DateFormat.jm().format(
                                        DateTime.parse(state
                                            .model.weather!.daily.sunset[0])),
                                    name: HomeScreenTexts.sunset,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InfoSection(
                                    asset: HomeScreenAssets.minTempIcon,
                                    value:
                                        "${state.model.weather!.daily.apparent_temperature_min[0].toInt()}°${state.model.tempUnit}",
                                    name: HomeScreenTexts.minTemp,
                                  ),
                                  InfoSection(
                                    asset: HomeScreenAssets.maxTempIcon,
                                    value:
                                        "${state.model.weather!.daily.apparent_temperature_max[0].toInt()}°${state.model.tempUnit}",
                                    name: HomeScreenTexts.maxTemp,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InfoSection(
                                    asset: HomeScreenAssets.humidityIcon,
                                    value:
                                        "${state.model.weather!.hourly.relative_humidity_2m[0]}%",
                                    name: HomeScreenTexts.humidity,
                                  ),
                                  InfoSection(
                                    asset: HomeScreenAssets.windIcon,
                                    value:
                                        "${state.model.weather!.hourly.wind_speed_10m[0].toInt()} km/h",
                                    name: HomeScreenTexts.windVel,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context)
                                    .size
                                    .width, // Usa el ancho completo del dispositivo
                                height: 500,
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: state.model.next5days!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var weatherCondition =
                                          interpretCommonWeatherConditions(
                                              state.model.weather!.hourly
                                                  .weathercode[index],
                                              state.model.weather!.hourly
                                                  .wind_speed_10m[index]
                                                  .toInt());

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/${weatherCondition.values.first}',
                                            scale: 8,
                                          ),
                                          Text(
                                            state.model.next5days![index]
                                                .dayName,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Row(
                                            children: [
                                              InfoSection(
                                                  asset: 'assets/14.png',
                                                  value: state
                                                      .model
                                                      .next5days![index]
                                                      .minTemperature
                                                      .toString(),
                                                  name: 'Min'),
                                              InfoSection(
                                                  asset: 'assets/13.png',
                                                  value: state
                                                      .model
                                                      .next5days![index]
                                                      .maxTemperature
                                                      .toString(),
                                                  name: 'Max'),
                                            ],
                                          )
                                        ],
                                      );
                                    })),
                            const Center(
                                child: Text(
                              'Made with love by Roberto for Esusu! ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).viewInsets.bottom +
                                        50),
                          ],
                        ),
                      );
                    } else if (state is WeatherBlocFailure) {
                      return SomethignHappenedEmptyState(bloc: bloc);
                    } else if (state is WeatherLoadingState) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return const PermissionDeniedEmptyState();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
