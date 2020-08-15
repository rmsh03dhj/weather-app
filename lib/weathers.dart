import 'package:json_annotation/json_annotation.dart';

import 'weather.dart';

part 'weathers.g.dart';

@JsonSerializable()
class Weathers {
  final List<Weather> weather;

  const Weathers({
    this.weather,
  });

  factory Weathers.fromJson(Map<String, dynamic> json) => _$WeathersFromJson(json);
}
