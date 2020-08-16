
import 'package:json_annotation/json_annotation.dart';

part 'hourly_forcast.g.dart';

@JsonSerializable()
class HourlyForcast{
  final List<String> times;
  final List<String> weatherCondition;
  final List<String> temperatures;

  const HourlyForcast({
    this.times,
    this.weatherCondition,
    this.temperatures,
  });

  factory HourlyForcast.fromJson(Map<String, dynamic> json) => _$HourlyForcastFromJson(json);
}