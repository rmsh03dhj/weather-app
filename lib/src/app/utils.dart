import 'package:flutter/material.dart';
import 'package:weather_app/src/domain/entities/hourly_forcast.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_icons/weather_icons.dart';

Map<String, IconData> wholeDayWeatherIconMap = {
  "snow": WeatherIcons.time_1,
  "heavyRain": WeatherIcons.rain,
  "lightRain": WeatherIcons.raindrops,
  "showers": WeatherIcons.raindrop,
  "heavyCloud": WeatherIcons.cloudy,
  "lightCloud": WeatherIcons.cloud_refresh,
  "clear": WeatherIcons.day_sunny,
  "hail": WeatherIcons.hail,
  "thunderstorm": WeatherIcons.thunderstorm,
};

Map<String, IconData> hourlyWeatherForcastIconMap = {
  "day_cloud_high": WeatherIcons.day_cloudy_high,
  "day_light_wind": WeatherIcons.day_light_wind,
  "day_sleet": WeatherIcons.day_sleet,
  "day_haze": WeatherIcons.day_haze,
  "day_sunny": WeatherIcons.day_sunny,
  "cloud_refresh": WeatherIcons.cloud_refresh,
  "clear": WeatherIcons.day_sunny,
  "rain_wind": WeatherIcons.rain_wind,
  "lighting": WeatherIcons.day_lightning,
  "strom_showers": WeatherIcons.storm_showers,
};

Weather sampleWeather = Weather(
    condition: "clear",
    day: "SUN",
    minTemp: "11",
    maxTemp: "17",
    hourlyForcast: HourlyForcast(times: [
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
    ], weatherCondition: [
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear",
      "clear"
    ], temperatures: [
      "12",
      "13",
      "13",
      "13",
      "14",
      "14",
      "14",
      "14",
      "14",
      "14",
      "13",
      "12",
      "12"
    ]),
    humidity: "78 %",
    chanceOfRain: "10 %",
    rainFall: "0mm",
    precipitation: "0.0 mm",
    visibility: "16.1 km",
    pressure: "1006 hPa",
    uv: "Lowest",
    preceivedTemperature: "14",
    precipitationProbability: "7 %",
    sunrise: "5: 45 am",
    sunset: "5: 65 pm",
    moonrise: "7: 01 pm",
    moonset: "4: 01 am",
    windSpeed: "20.4 km/h");