import 'package:intl/intl.dart';
import 'package:weather_app/src/app/utils.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_app/src/domain/repositories/repository.dart';

class WeatherRepository extends Repository {
  List<Weather> weatherList;
  static final WeatherRepository _instance = WeatherRepository._internal();
  WeatherRepository._internal() {
    weatherList = <Weather>[];
    weatherList.addAll([
      sampleWeather,
      sampleWeather.copyWith(
        day: DateFormat("EEE").format(DateTime.now().add(Duration(days: 1))),
        condition: generateRandomWeatherCondition(),
        humidity: generateRandomNumber(),
        chanceOfRain: generateRandomNumber(),
        rainFall: generateRandomNumber(),
        precipitation: generateRandomNumber(),
        visibility: generateRandomNumber(),
        pressure: generateRandomNumber(),
        perceivedTemperature: generateRandomNumber(),
        precipitationProbability: generateRandomNumber(),
        windSpeed: generateRandomNumber(),
      ),
      sampleWeather.copyWith(
        day: DateFormat("EEE").format(DateTime.now().add(Duration(days: 2))),
        condition: generateRandomWeatherCondition(),
        humidity: generateRandomNumber(),
        chanceOfRain: generateRandomNumber(),
        rainFall: generateRandomNumber(),
        precipitation: generateRandomNumber(),
        visibility: generateRandomNumber(),
        pressure: generateRandomNumber(),
        perceivedTemperature: generateRandomNumber(),
        precipitationProbability: generateRandomNumber(),
        windSpeed: generateRandomNumber(),
      ),
      sampleWeather.copyWith(
        day: DateFormat("EEE").format(DateTime.now().add(Duration(days: 3))),
        condition: generateRandomWeatherCondition(),
        humidity: generateRandomNumber(),
        chanceOfRain: generateRandomNumber(),
        rainFall: generateRandomNumber(),
        precipitation: generateRandomNumber(),
        visibility: generateRandomNumber(),
        pressure: generateRandomNumber(),
        perceivedTemperature: generateRandomNumber(),
        precipitationProbability: generateRandomNumber(),
        windSpeed: generateRandomNumber(),
      ),
      sampleWeather.copyWith(
        day: DateFormat("EEE").format(DateTime.now().add(Duration(days: 4))),
        condition: generateRandomWeatherCondition(),
        humidity: generateRandomNumber(),
        chanceOfRain: generateRandomNumber(),
        rainFall: generateRandomNumber(),
        precipitation: generateRandomNumber(),
        visibility: generateRandomNumber(),
        pressure: generateRandomNumber(),
        perceivedTemperature: generateRandomNumber(),
        precipitationProbability: generateRandomNumber(),
        windSpeed: generateRandomNumber(),
      ),
      sampleWeather.copyWith(
        day: DateFormat("EEE").format(DateTime.now().add(Duration(days: 5))),
        condition: generateRandomWeatherCondition(),
        humidity: generateRandomNumber(),
        chanceOfRain: generateRandomNumber(),
        rainFall: generateRandomNumber(),
        precipitation: generateRandomNumber(),
        visibility: generateRandomNumber(),
        pressure: generateRandomNumber(),
        perceivedTemperature: generateRandomNumber(),
        precipitationProbability: generateRandomNumber(),
        windSpeed: generateRandomNumber(),
      ),
      sampleWeather.copyWith(
        day: DateFormat("EEE").format(DateTime.now().add(Duration(days: 6))),
        condition: generateRandomWeatherCondition(),
        humidity: generateRandomNumber(),
        chanceOfRain: generateRandomNumber(),
        rainFall: generateRandomNumber(),
        precipitation: generateRandomNumber(),
        visibility: generateRandomNumber(),
        pressure: generateRandomNumber(),
        perceivedTemperature: generateRandomNumber(),
        precipitationProbability: generateRandomNumber(),
        windSpeed: generateRandomNumber(),
      ),
    ]);
  }
  factory WeatherRepository() => _instance;

  @override
  Future<List<Weather>> getAllWeathers(String locationId) async {
    return weatherList;
  }
}
