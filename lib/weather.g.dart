// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    precipitation: json['precipitation'] as String,
    visibility: json['visibility'] as String,
    pressure: json['pressure'] as String,
    uv: json['uv'] as String,
    preceivedTemperature: json['preceivedTemperature'] as String,
    precipitationProbability: json['precipitationProbability'] as String,
    hourlyForcast: json['hourlyForcast'] == null
        ? null
        : HourlyForcast.fromJson(json['hourlyForcast'] as Map<String, dynamic>),
    humidity: json['humidity'] as String,
    chanceOfRain: json['chanceOfRain'] as String,
    windSpeed: json['windSpeed'] as String,
    condition: json['condition'] as String,
    minTemp: json['minTemp'] as String,
    maxTemp: json['maxTemp'] as String,
    day: json['day'] as String,
    rainFall: json['rainFall'] as String,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'condition': instance.condition,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'day': instance.day,
      'hourlyForcast': instance.hourlyForcast,
      'humidity': instance.humidity,
      'chanceOfRain': instance.chanceOfRain,
      'windSpeed': instance.windSpeed,
      'rainFall': instance.rainFall,
      'precipitation': instance.precipitation,
      'visibility': instance.visibility,
      'pressure': instance.pressure,
      'uv': instance.uv,
      'preceivedTemperature': instance.preceivedTemperature,
      'precipitationProbability': instance.precipitationProbability,
    };
