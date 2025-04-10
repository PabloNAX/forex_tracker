import 'package:forex_trader/domain/models/forex_candle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'history_state.freezed.dart';

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryInitial;
  const factory HistoryState.loading() = HistoryLoading;
  const factory HistoryState.loaded(List<ForexCandle>  data) = HistoryLoaded;
  const factory HistoryState.error(String message) = HistoryError;
}
