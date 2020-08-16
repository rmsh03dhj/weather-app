import 'package:weather_app/domain/entities/weather_entity.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';
import 'package:weather_app/hourly_forcast.dart';

class DataWeatherRepository extends WeatherRepository {
  List<WeatherEntity> weathersEntities;
  static final DataWeatherRepository _instance =
      DataWeatherRepository._internal();
  DataWeatherRepository._internal() {
    weathersEntities = <WeatherEntity>[];
    weathersEntities.addAll([
      weatherEntity,
      weatherEntity,
      weatherEntity,
      weatherEntity,
    ]);
  }
  factory DataWeatherRepository() => _instance;

  @override
  Future<List<WeatherEntity>> getAllWeathers(String locationId) async {
    // Here, do some heavy work lke http requests, async tasks, etc to get data
    return weathersEntities;
  }
}

WeatherEntity weatherEntity = WeatherEntity(
    condition: "clear",
    day: "SUN",
    minTemp: "11 C",
    maxTemp: "17 C",
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
    ], icons: [
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png",
      "assets/icons/sunny.png"
    ], temperatures: [
      "12",
      "13",
      "12",
      "14",
      "11",
      "12",
      "12",
      "13",
      "12",
      "14",
      "11",
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
    windSpeed: "20.4 km/h");
