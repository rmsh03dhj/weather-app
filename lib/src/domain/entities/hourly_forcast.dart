
import 'package:json_annotation/json_annotation.dart';

class HourlyForcast{
  final List<String> times;
  final List<String> weatherCondition;
  final List<String> temperatures;

  const HourlyForcast({
    this.times,
    this.weatherCondition,
    this.temperatures,
  });
}