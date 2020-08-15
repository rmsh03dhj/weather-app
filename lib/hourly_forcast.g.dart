// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyForcast _$HourlyForcastFromJson(Map<String, dynamic> json) {
  return HourlyForcast(
    times: (json['times'] as List)?.map((e) => e as String)?.toList(),
    icons: (json['icons'] as List)?.map((e) => e as String)?.toList(),
    temperatures:
        (json['temperatures'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$HourlyForcastToJson(HourlyForcast instance) =>
    <String, dynamic>{
      'times': instance.times,
      'icons': instance.icons,
      'temperatures': instance.temperatures,
    };
