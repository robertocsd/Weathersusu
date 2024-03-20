Map<String, String> interpretCommonWeatherConditions(
    int weatherCode, int windSpeed) {
  var icon = "Unknown";
  var description = 'Unknown';

  if (windSpeed > 25) {
    icon = "5.png";
  }
  if ([0, 1].contains(weatherCode)) {
    icon = "9.png";
    description = "Windy";
  } else if ([2, 3, 45, 48].contains(weatherCode)) {
    icon = "8.png";
    description = "Cloudy";
  } else if ([51, 53, 55, 61, 63, 65].contains(weatherCode)) {
    icon = "2.png";
    description = "Light rain";
  } else if ([80, 81, 82].contains(weatherCode)) {
    icon = "3.png";
    description = "Rainy";
  } else if ([71, 73, 75, 85, 86].contains(weatherCode)) {
    icon = "4.png";
    description = "Snowing";
  } else if ([95, 96, 99].contains(weatherCode)) {
    icon = "1.png";
    description = "Thunderstorm";
  }

  return {"icon": icon, "description": description};
}
