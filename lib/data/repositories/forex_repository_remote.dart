import 'package:forex_trader/data/services/api/models/forex_candles/forex_candles_dto.dart';
import 'package:forex_trader/data/services/api/models/forex_pair/forex_pair_dto.dart';
import 'package:forex_trader/domain/models/forex_candle.dart';
import 'package:forex_trader/utils/result.dart';
import 'package:logging/logging.dart';
import '../../domain/models/forex_pair.dart';
import '../services/api/finnhub_service.dart';
import 'forex_repository.dart';

class ForexRepositoryRemote implements ForexRepository {
  ForexRepositoryRemote({required FinnhubService finnhubService})
    : _finnhubService = finnhubService;

  final FinnhubService _finnhubService;

  final _log = Logger('ForexRepositoryRemote');

  @override
  /// Fetches a list of forex pairs from the Finnhub API.
  Future<Result<List<ForexPair>>> getForexPairs() async {
    try {
      final result = await _finnhubService.fetchForexPairs();
      switch (result) {
        case Ok<List<ForexPairDto>>():
          _log.fine('Fetched forex pairs: ${result.value}');
          return Result.ok(
            result.value
                .map(
                  (dto) => ForexPair(
                    symbol: dto.symbol,
                    currentPrice: 0,
                    change: 0,
                    percentChange: 0,
                  ),
                )
                .toList(),
          );
        case Error<List<ForexPairDto>>():
          _log.severe('Error fetching forex pairs: ${result.error}');
          return Result.error(
            Exception('Failed to fetch forex pairs: ${result.error}'),
          );
      }
    } catch (e) {
      _log.severe('Error fetching forex pairs: $e');
      return Result.error(Exception('Network error: ${e.toString()}'));
    }
  }

  @override
  // / Fetches historical data for a given forex symbol.
  Future<Result<List<ForexCandle>>> getHistoricalData(String symbol) async {
    try {
      final result = await _finnhubService.fetchHistoricalData(symbol: symbol);
      switch (result) {
        case Ok<ForexCandlesDto>():
          _log.fine('Fetched historical data: ${result.value}');

          /// TODO Question  а вот тут надо ли мне использовать domain model ForexCandle? или напрямую DTO надо?
          /// если в принципе DTO и Domain Model одинаковые, то можно использовать DTO? или в данном случае лучше как раз списки преобразвать в список  ForexCandle?
          final candles = <ForexCandle>[];

          for (var i = 0; i < result.value.timestamps.length; i++) {
            candles.add(
              ForexCandle(
                dateTime: DateTime.fromMillisecondsSinceEpoch(
                  result.value.timestamps[i] * 1000,
                ),
                open: result.value.openPrices[i],
                high: result.value.highPrices[i],
                low: result.value.lowPrices[i],
                close: result.value.closePrices[i],
                volume: result.value.volumes[i],
              ),
            );
          }
          return Result.ok(candles);
        case Error<ForexCandlesDto>():
          _log.severe('Error fetching historical data: ${result.error}');
          return Result.error(
            Exception('Failed to fetch historical data: ${result.error}'),
          );
      }
    } catch (e) {
      _log.severe('Error fetching historical data: $e');
      return Result.error(Exception('Network error: ${e.toString()}'));
    }
  }
}
