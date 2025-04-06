// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forex_candles_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForexCandlesDto {

 List<double> get closePrices;// "c"
 List<double> get highPrices;// "h"
 List<double> get lowPrices;// "l"
 List<double> get openPrices;// "o"
 String get status;// "s"
 List<int> get timestamps;// "t"
 List<int> get volumes;
/// Create a copy of ForexCandlesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForexCandlesDtoCopyWith<ForexCandlesDto> get copyWith => _$ForexCandlesDtoCopyWithImpl<ForexCandlesDto>(this as ForexCandlesDto, _$identity);

  /// Serializes this ForexCandlesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForexCandlesDto&&const DeepCollectionEquality().equals(other.closePrices, closePrices)&&const DeepCollectionEquality().equals(other.highPrices, highPrices)&&const DeepCollectionEquality().equals(other.lowPrices, lowPrices)&&const DeepCollectionEquality().equals(other.openPrices, openPrices)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.timestamps, timestamps)&&const DeepCollectionEquality().equals(other.volumes, volumes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(closePrices),const DeepCollectionEquality().hash(highPrices),const DeepCollectionEquality().hash(lowPrices),const DeepCollectionEquality().hash(openPrices),status,const DeepCollectionEquality().hash(timestamps),const DeepCollectionEquality().hash(volumes));

@override
String toString() {
  return 'ForexCandlesDto(closePrices: $closePrices, highPrices: $highPrices, lowPrices: $lowPrices, openPrices: $openPrices, status: $status, timestamps: $timestamps, volumes: $volumes)';
}


}

/// @nodoc
abstract mixin class $ForexCandlesDtoCopyWith<$Res>  {
  factory $ForexCandlesDtoCopyWith(ForexCandlesDto value, $Res Function(ForexCandlesDto) _then) = _$ForexCandlesDtoCopyWithImpl;
@useResult
$Res call({
 List<double> closePrices, List<double> highPrices, List<double> lowPrices, List<double> openPrices, String status, List<int> timestamps, List<int> volumes
});




}
/// @nodoc
class _$ForexCandlesDtoCopyWithImpl<$Res>
    implements $ForexCandlesDtoCopyWith<$Res> {
  _$ForexCandlesDtoCopyWithImpl(this._self, this._then);

  final ForexCandlesDto _self;
  final $Res Function(ForexCandlesDto) _then;

/// Create a copy of ForexCandlesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? closePrices = null,Object? highPrices = null,Object? lowPrices = null,Object? openPrices = null,Object? status = null,Object? timestamps = null,Object? volumes = null,}) {
  return _then(_self.copyWith(
closePrices: null == closePrices ? _self.closePrices : closePrices // ignore: cast_nullable_to_non_nullable
as List<double>,highPrices: null == highPrices ? _self.highPrices : highPrices // ignore: cast_nullable_to_non_nullable
as List<double>,lowPrices: null == lowPrices ? _self.lowPrices : lowPrices // ignore: cast_nullable_to_non_nullable
as List<double>,openPrices: null == openPrices ? _self.openPrices : openPrices // ignore: cast_nullable_to_non_nullable
as List<double>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamps: null == timestamps ? _self.timestamps : timestamps // ignore: cast_nullable_to_non_nullable
as List<int>,volumes: null == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ForexCandlesDto implements ForexCandlesDto {
  const _ForexCandlesDto({required final  List<double> closePrices, required final  List<double> highPrices, required final  List<double> lowPrices, required final  List<double> openPrices, required this.status, required final  List<int> timestamps, required final  List<int> volumes}): _closePrices = closePrices,_highPrices = highPrices,_lowPrices = lowPrices,_openPrices = openPrices,_timestamps = timestamps,_volumes = volumes;
  factory _ForexCandlesDto.fromJson(Map<String, dynamic> json) => _$ForexCandlesDtoFromJson(json);

 final  List<double> _closePrices;
@override List<double> get closePrices {
  if (_closePrices is EqualUnmodifiableListView) return _closePrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_closePrices);
}

// "c"
 final  List<double> _highPrices;
// "c"
@override List<double> get highPrices {
  if (_highPrices is EqualUnmodifiableListView) return _highPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highPrices);
}

// "h"
 final  List<double> _lowPrices;
// "h"
@override List<double> get lowPrices {
  if (_lowPrices is EqualUnmodifiableListView) return _lowPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lowPrices);
}

// "l"
 final  List<double> _openPrices;
// "l"
@override List<double> get openPrices {
  if (_openPrices is EqualUnmodifiableListView) return _openPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openPrices);
}

// "o"
@override final  String status;
// "s"
 final  List<int> _timestamps;
// "s"
@override List<int> get timestamps {
  if (_timestamps is EqualUnmodifiableListView) return _timestamps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timestamps);
}

// "t"
 final  List<int> _volumes;
// "t"
@override List<int> get volumes {
  if (_volumes is EqualUnmodifiableListView) return _volumes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_volumes);
}


/// Create a copy of ForexCandlesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForexCandlesDtoCopyWith<_ForexCandlesDto> get copyWith => __$ForexCandlesDtoCopyWithImpl<_ForexCandlesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForexCandlesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForexCandlesDto&&const DeepCollectionEquality().equals(other._closePrices, _closePrices)&&const DeepCollectionEquality().equals(other._highPrices, _highPrices)&&const DeepCollectionEquality().equals(other._lowPrices, _lowPrices)&&const DeepCollectionEquality().equals(other._openPrices, _openPrices)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._timestamps, _timestamps)&&const DeepCollectionEquality().equals(other._volumes, _volumes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_closePrices),const DeepCollectionEquality().hash(_highPrices),const DeepCollectionEquality().hash(_lowPrices),const DeepCollectionEquality().hash(_openPrices),status,const DeepCollectionEquality().hash(_timestamps),const DeepCollectionEquality().hash(_volumes));

@override
String toString() {
  return 'ForexCandlesDto(closePrices: $closePrices, highPrices: $highPrices, lowPrices: $lowPrices, openPrices: $openPrices, status: $status, timestamps: $timestamps, volumes: $volumes)';
}


}

/// @nodoc
abstract mixin class _$ForexCandlesDtoCopyWith<$Res> implements $ForexCandlesDtoCopyWith<$Res> {
  factory _$ForexCandlesDtoCopyWith(_ForexCandlesDto value, $Res Function(_ForexCandlesDto) _then) = __$ForexCandlesDtoCopyWithImpl;
@override @useResult
$Res call({
 List<double> closePrices, List<double> highPrices, List<double> lowPrices, List<double> openPrices, String status, List<int> timestamps, List<int> volumes
});




}
/// @nodoc
class __$ForexCandlesDtoCopyWithImpl<$Res>
    implements _$ForexCandlesDtoCopyWith<$Res> {
  __$ForexCandlesDtoCopyWithImpl(this._self, this._then);

  final _ForexCandlesDto _self;
  final $Res Function(_ForexCandlesDto) _then;

/// Create a copy of ForexCandlesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? closePrices = null,Object? highPrices = null,Object? lowPrices = null,Object? openPrices = null,Object? status = null,Object? timestamps = null,Object? volumes = null,}) {
  return _then(_ForexCandlesDto(
closePrices: null == closePrices ? _self._closePrices : closePrices // ignore: cast_nullable_to_non_nullable
as List<double>,highPrices: null == highPrices ? _self._highPrices : highPrices // ignore: cast_nullable_to_non_nullable
as List<double>,lowPrices: null == lowPrices ? _self._lowPrices : lowPrices // ignore: cast_nullable_to_non_nullable
as List<double>,openPrices: null == openPrices ? _self._openPrices : openPrices // ignore: cast_nullable_to_non_nullable
as List<double>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamps: null == timestamps ? _self._timestamps : timestamps // ignore: cast_nullable_to_non_nullable
as List<int>,volumes: null == volumes ? _self._volumes : volumes // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
