import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forex_trader/data/repositories/forex_repository.dart';
import 'package:forex_trader/domain/models/forex_candle.dart';
import 'package:forex_trader/ui/core/localization/string_hardcoded.dart';
import 'package:forex_trader/ui/history/bloc/history_state.dart';
import 'package:forex_trader/utils/result.dart';
import 'package:logging/logging.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final ForexRepository _forexRepository;

  HistoryCubit(ForexRepository forexRepository)
    : _forexRepository = forexRepository,
      super(HistoryInitial());

  final _log = Logger('HistoryCubit');

  void loadData(String symbol) async {
    emit(HistoryLoading());
    final historyPairResult = await _forexRepository.getHistoricalData(symbol);
    switch (historyPairResult) {
      case Ok<List<ForexCandle>>():
        emit(HistoryLoaded(historyPairResult.value));
        _log.fine(
          "Loaded ${historyPairResult.value.length} history data points",
        );
        break;
      case Error<List<ForexCandle>>():
        emit(HistoryError("Data loading error".hardcoded));
        _log.warning("Error loading forex pairs: ${historyPairResult.error}");
        break;
    }
  }
}
