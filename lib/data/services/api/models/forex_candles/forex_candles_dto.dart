import 'package:freezed_annotation/freezed_annotation.dart';
part 'forex_candles_dto.freezed.dart';
part 'forex_candles_dto.g.dart';


@freezed
abstract class ForexCandlesDto with _$ForexCandlesDto {
  const factory ForexCandlesDto({
    required List<double> closePrices, // "c"
    required List<double> highPrices, // "h"
    required List<double> lowPrices, // "l"
    required List<double> openPrices, // "o"
    required String status, // "s"
    required List<int> timestamps, // "t"
    required List<int> volumes, // "v"
  }) = _ForexCandlesDto;

  factory ForexCandlesDto.fromJson(Map<String, dynamic> json) =>
      _$ForexCandlesDtoFromJson(json);
}
