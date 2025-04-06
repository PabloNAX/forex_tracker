import 'package:freezed_annotation/freezed_annotation.dart';

part 'forex_pair_dto.freezed.dart';
part 'forex_pair_dto.g.dart';

@freezed
abstract class ForexPairDto with _$ForexPairDto {
  const factory ForexPairDto({
    required String symbol,
    required String displaySymbol,
    required String description,
  }) = _ForexPairDto;

  factory ForexPairDto.fromJson(Map<String, dynamic> json) =>
      _$ForexPairDtoFromJson(json);

}