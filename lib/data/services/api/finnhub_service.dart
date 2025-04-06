import 'dart:async';
import 'dart:ffi';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../utils/result.dart';
import 'models/forex_pair/forex_pair_dto.dart';

abstract class FinnhubService {
  Future<Result<List<ForexPairDto>>> fetchForexPairs();

  /// TODO Question вот тут надо ли использовать те же имена параметров и типы symbol, resolution что и в иплментации? или нет?
  Future<Result<Map<String, dynamic>>> fetchHistoricalData({
    required String symbol,
    String resolution = "D",
    DateTime? from,
    DateTime? to,
  });
}

class FinnhubServiceImpl implements FinnhubService {
  FinnhubServiceImpl({String? apiKey}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://finnhub.io/api/v1',
        queryParameters: {
          'token': apiKey ?? 'cuv0h89r01qpi6rsjac0cuv0h89r01qpi6rsjacg',
        },
      ),
    );

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: false, // Set to true for debugging
      ),
    ); // Add logger interceptor
  }

  late final Dio _dio;

  // Docs: https://finnhub.io/docs/api/forex-symbols
  @override
  Future<Result<List<ForexPairDto>>> fetchForexPairs() async {
    try {
      final response = await _dio.get(
        '/forex/symbol',
        queryParameters: {'exchange': 'oanda'},
      );

      if (response.statusCode == 200) {
        /// TODO Question: что будет если response.data String или Map? какой универсальный подход?
        final List<dynamic> data = response.data ?? [];
        final pairs = data.map((item) => ForexPairDto.fromJson(item)).toList();
        return Result.ok(pairs);
      } else {
        return Result.error(Exception('Failed to load forex pairs'));
      }
    } on DioException catch (e) {
      return Result.error(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Result.error(Exception('Unexpected error: $e'));
    }
  }

  /// Fetches historical data for a given forex symbol.
  /// Docs: https://finnhub.io/docs/api/forex-candles
  /// /forex/candle?symbol=OANDA:EUR_USD&resolution=D&from=1572651390&to=1575243390
  @override
  Future<Result<Map<String, List<num>>>> fetchHistoricalData({
    required String symbol,
    String resolution = "D",
    DateTime? from,
    DateTime? to,
  }) async {
    try {
      final response = await _dio.get(
        '/forex/candle',
        queryParameters: {
          'symbol': 'OANDA:$symbol',
          'resolution': resolution,
          'from':
              DateTime.now()
                  .subtract(const Duration(days: 30))
                  .millisecondsSinceEpoch ~/
              1000,
          'to': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        return Result.ok(data);
      } else {
        return Result.error(Exception('Failed to load forex candle'));
      }
    } on DioException catch (e) {
      return Result.error(Exception('Network error: ${e.message}'));
    } catch (e) {
      return Result.error(Exception('Failed to load historical data'));
    }
  }
}
