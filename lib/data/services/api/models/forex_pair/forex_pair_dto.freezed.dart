// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forex_pair_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForexPairDto {

 String get symbol; String get displaySymbol; String get description;
/// Create a copy of ForexPairDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForexPairDtoCopyWith<ForexPairDto> get copyWith => _$ForexPairDtoCopyWithImpl<ForexPairDto>(this as ForexPairDto, _$identity);

  /// Serializes this ForexPairDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForexPairDto&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.displaySymbol, displaySymbol) || other.displaySymbol == displaySymbol)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,displaySymbol,description);

@override
String toString() {
  return 'ForexPairDto(symbol: $symbol, displaySymbol: $displaySymbol, description: $description)';
}


}

/// @nodoc
abstract mixin class $ForexPairDtoCopyWith<$Res>  {
  factory $ForexPairDtoCopyWith(ForexPairDto value, $Res Function(ForexPairDto) _then) = _$ForexPairDtoCopyWithImpl;
@useResult
$Res call({
 String symbol, String displaySymbol, String description
});




}
/// @nodoc
class _$ForexPairDtoCopyWithImpl<$Res>
    implements $ForexPairDtoCopyWith<$Res> {
  _$ForexPairDtoCopyWithImpl(this._self, this._then);

  final ForexPairDto _self;
  final $Res Function(ForexPairDto) _then;

/// Create a copy of ForexPairDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? displaySymbol = null,Object? description = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,displaySymbol: null == displaySymbol ? _self.displaySymbol : displaySymbol // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ForexPairDto implements ForexPairDto {
  const _ForexPairDto({required this.symbol, required this.displaySymbol, required this.description});
  factory _ForexPairDto.fromJson(Map<String, dynamic> json) => _$ForexPairDtoFromJson(json);

@override final  String symbol;
@override final  String displaySymbol;
@override final  String description;

/// Create a copy of ForexPairDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForexPairDtoCopyWith<_ForexPairDto> get copyWith => __$ForexPairDtoCopyWithImpl<_ForexPairDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForexPairDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForexPairDto&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.displaySymbol, displaySymbol) || other.displaySymbol == displaySymbol)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,displaySymbol,description);

@override
String toString() {
  return 'ForexPairDto(symbol: $symbol, displaySymbol: $displaySymbol, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ForexPairDtoCopyWith<$Res> implements $ForexPairDtoCopyWith<$Res> {
  factory _$ForexPairDtoCopyWith(_ForexPairDto value, $Res Function(_ForexPairDto) _then) = __$ForexPairDtoCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String displaySymbol, String description
});




}
/// @nodoc
class __$ForexPairDtoCopyWithImpl<$Res>
    implements _$ForexPairDtoCopyWith<$Res> {
  __$ForexPairDtoCopyWithImpl(this._self, this._then);

  final _ForexPairDto _self;
  final $Res Function(_ForexPairDto) _then;

/// Create a copy of ForexPairDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? displaySymbol = null,Object? description = null,}) {
  return _then(_ForexPairDto(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,displaySymbol: null == displaySymbol ? _self.displaySymbol : displaySymbol // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
