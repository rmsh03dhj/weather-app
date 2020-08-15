// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weathers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weathers _$WeathersFromJson(Map<String, dynamic> json) {
  return Weathers(
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WeathersToJson(Weathers instance) => <String, dynamic>{
      'weather': instance.weather,
    };
