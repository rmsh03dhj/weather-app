
import 'package:weather_app/src/app/utils.dart';
import 'package:weather_app/src/domain/entities/weather.dart';
import 'package:weather_app/src/domain/repositories/repository.dart';

class WeatherRepository extends Repository {
  List<Weather> weathersEntities;
  static final WeatherRepository _instance =
      WeatherRepository._internal();
  WeatherRepository._internal() {
    weathersEntities = <Weather>[];
    weathersEntities.addAll([
      sampleWeather,
      sampleWeather,
      sampleWeather,
      sampleWeather,
    ]);
  }
  factory WeatherRepository() => _instance;

  @override
  Future<List<Weather>> getAllWeathers(String locationId) async {
    // Here, do some heavy work lke http requests, async tasks, etc to get data
    return weathersEntities;
  }
}