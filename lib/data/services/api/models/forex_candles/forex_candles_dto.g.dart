// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forex_candles_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForexCandlesDto _$ForexCandlesDtoFromJson(Map<String, dynamic> json) =>
    _ForexCandlesDto(
      closePrices:
          (json['closePrices'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      highPrices:
          (json['highPrices'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      lowPrices:
          (json['lowPrices'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      openPrices:
          (json['openPrices'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      status: json['status'] as String,
      timestamps:
          (json['timestamps'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      volumes:
          (json['volumes'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$ForexCandlesDtoToJson(_ForexCandlesDto instance) =>
    <String, dynamic>{
      'closePrices': instance.closePrices,
      'highPrices': instance.highPrices,
      'lowPrices': instance.lowPrices,
      'openPrices': instance.openPrices,
      'status': instance.status,
      'timestamps': instance.timestamps,
      'volumes': instance.volumes,
    };
