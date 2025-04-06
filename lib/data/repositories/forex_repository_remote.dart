import 'package:forex_trader/data/services/api/models/forex_pair/forex_pair_dto.dart';
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
  Future<Result<List<Map<String, dynamic>>>> getHistoricalData(String symbol) {
    // create a mock for now
    return Future.delayed(
      const Duration(seconds: 2),
      () => Result.ok([
        {'date': '2023-01-01', 'price': 1.0},
        {'date': '2023-01-02', 'price': 1.1},
        {'date': '2023-01-03', 'price': 1.2},
      ]),
    );
  }
}
