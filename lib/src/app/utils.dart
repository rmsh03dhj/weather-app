import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/src/domain/entities/hourly_forcast.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_icons/weather_icons.dart';

Map<String, IconData> weatherIconMap = {
  "Snow fall": WeatherIcons.time_1,
  "Heavy Rain": WeatherIcons.rain,
  "Light Rain": WeatherIcons.raindrops,
  "Shower": WeatherIcons.showers,
  "Heavy Cloud": WeatherIcons.cloudy,
  "Light Cloud": WeatherIcons.cloud_refresh,
  "Sunny": WeatherIcons.day_sunny,
  "Hail": WeatherIcons.hail,
  "Thunder Storm": WeatherIcons.thunderstorm,
  "Cloud": WeatherIcons.day_cloudy_high,
  "Light Wind": WeatherIcons.day_light_wind,
  "Day Sleet": WeatherIcons.day_sleet,
  "Day Haze": WeatherIcons.day_haze,
  "Rain and Windy": WeatherIcons.rain_wind,
  "lighting": WeatherIcons.day_lightning,
  "Storm and Showers": WeatherIcons.storm_showers,
};

Weather sampleWeather = Weather(
  condition: generateRandomWeatherCondition(),
  day: DateFormat("EEE").format(DateTime.now()),
  minTemp: generateRandomNumber(),
  maxTemp: generateRandomNumber(),
  hourlyForcast: HourlyForcast(
      times: [
        "8am",
        "9am",
        "10am",
        "11am",
        "12pm",
        "1pm",
        "2pm",
        "3pm",
        "4pm",
        "5pm",
        "6pm",
        "7pm",
        "8pm"
      ],
      weatherCondition: generateRandomWeatherConditionList(),
      temperatures: generateRandomNumberList()),
  humidity: generateRandomNumber(),
  chanceOfRain: generateRandomNumber(),
  rainFall: generateRandomNumber(),
  precipitation: generateRandomNumber(),
  visibility: generateRandomNumber(),
  pressure: generateRandomNumber(),
  uv: "Lowest",
  preceivedTemperature: generateRandomNumber(),
  precipitationProbability: generateRandomNumber(),
  sunrise: "5: 45 am",
  sunset: "5: 65 pm",
  moonrise: "7: 01 pm",
  moonset: "4: 01 am",
  windSpeed: generateRandomNumber(),
);

String generateRandomNumber() {
  Random random = new Random();
  return (random.nextDouble() * 10).toStringAsFixed(2);
}

List<String> generateRandomNumberList() {
  List<String> ans = List();
  Random random = new Random();
  for (int i = 0; i < 13; i++) {
    int randomNumber = random.nextInt(20) + 10;
    ans.add(randomNumber.toString());
  }
  return ans;
}

String generateRandomWeatherCondition() {
  List<String> weatherCondition = List();
  weatherCondition.addAll(weatherIconMap.keys);
  Random random = new Random();
  int randomNum = random.nextInt(weatherCondition.length);
  return weatherCondition[randomNum];
}

List<String> generateRandomWeatherConditionList() {
  List<String> ans = List();
  for (int i = 0; i < 13; i++) {
    ans.add(generateRandomWeatherCondition());
  }
  return ans;
}
