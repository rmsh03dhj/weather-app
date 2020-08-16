
import 'package:json_annotation/json_annotation.dart';

import 'hourly_forcast.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final String condition;
  final String minTemp;
  final String maxTemp;
  final String day;
  final HourlyForcast hourlyForcast;
  final String humidity;
  final String chanceOfRain;
  final String windSpeed;
  final String rainFall;
  final String precipitation;
  final String visibility;
  final String pressure;
  final String uv;
  final String preceivedTemperature;
  final String precipitationProbability;
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;


  const Weather({this.sunrise, this.sunset, this.moonrise, this.moonset,
      this.precipitation, this.visibility, this.pressure, this.uv, this.preceivedTemperature, this.precipitationProbability,
        this.hourlyForcast,
        this.humidity,
        this.chanceOfRain,
        this.windSpeed,
        this.condition,
        this.minTemp,
        this.maxTemp,
        this.day,
        this.rainFall});


  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

}
