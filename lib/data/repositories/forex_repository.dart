

import 'package:forex_trader/domain/models/forex_candle.dart';
import 'package:forex_trader/utils/result.dart';

import '../../domain/models/forex_pair.dart';

abstract class ForexRepository {
  Future<Result<List<ForexPair>>> getForexPairs();

  Future<Result<List<ForexCandle>>> getHistoricalData(String symbol);
}
