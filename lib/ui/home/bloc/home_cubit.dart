import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forex_trader/data/repositories/forex_repository.dart';
import 'package:forex_trader/domain/models/forex_pair.dart';
import 'package:forex_trader/ui/core/localization/string_hardcoded.dart';
import 'package:forex_trader/utils/result.dart';
import 'package:logging/logging.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ForexRepository _forexRepository;

  HomeCubit(ForexRepository forexRepository)
    : _forexRepository = forexRepository,
      super(HomeInitial());

  final _log = Logger('HomeCubit');

  void loadData() async {
    // Simulate data loading
    emit(HomeLoading());

    final forexPairResult = await _forexRepository.getForexPairs();
    switch (forexPairResult) {
      case Ok<List<ForexPair>>():
        final forexPairs = forexPairResult.value;
        emit(HomeLoaded(data: forexPairs));
        _log.fine("Loaded ${forexPairs.length} forex pairs");
        break;
      case Error<List<ForexPair>>():
        emit( HomeError("Data loading error".hardcoded));
        _log.warning("Error loading forex pairs: ${forexPairResult.error}");
        break;
    }
  }
}
