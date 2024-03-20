import 'package:challenge_esusu/helper/weather_interpreter.dart';
import 'package:flutter/material.dart';

//API key for google maps -- JUST FOR MAKE EASY TESTING, PLEASE DO NOT USE THIS KEY FOR ANY OTHER PURPOSES.
const String apiKey = "AIzaSyCXqTw06oBUJV_r1EkwiXvfXUNq7r_6J1g";

const Color textColorLightTheme = Color(0xFF0D0D0E);
const Color primaryColor = Color(0xFF3A8DFF);
const Color secondaryColor80LightTheme = Color(0xFF202225);
const Color secondaryColor60LightTheme = Color(0xFF313336);
const Color secondaryColor40LightTheme = Color(0xFF585858);
const Color secondaryColor20LightTheme = Color(0xFF787F84);
const Color secondaryColor10LightTheme = Color(0xFFEEEEEE);
const Color secondaryColor5LightTheme = Color(0xFFF8F8F8);

const defaultPadding = 16.0;

class HomeScreenTexts {
  static const goodDay = 'Good Day';
  static const goodNight = 'Good Night';
  static const tempUnitF = '°F';
  static const tempUnitC = '°C';
  static const sunrise = 'Sunrise';
  static const sunset = 'Sunset';
  static const minTemp = 'Min Temp';
  static const maxTemp = 'Max Temp';
  static const humidity = 'Humidity';
  static const windVel = 'Wind Vel';
  static const dateFormatDay = 'EEEE dd •';
}

class HomeScreenAssets {
  static const sunIcon = 'assets/11.png';
  static const moonIcon = 'assets/12.png';
  static const minTempIcon = 'assets/14.png';
  static const maxTempIcon = 'assets/13.png';
  static const humidityIcon = 'assets/humidity.png';
  static const windIcon = 'assets/9.png';

  static String getWeatherIcon(int weatherCode, int windSpeed) {
    return 'assets/${interpretCommonWeatherConditions(weatherCode, windSpeed).values.first}';
  }
}
