// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forex_pair_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForexPairDto _$ForexPairDtoFromJson(Map<String, dynamic> json) =>
    _ForexPairDto(
      symbol: json['symbol'] as String,
      displaySymbol: json['displaySymbol'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ForexPairDtoToJson(_ForexPairDto instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'displaySymbol': instance.displaySymbol,
      'description': instance.description,
    };
