import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forex_trader/data/repositories/forex_repository.dart';
import 'package:forex_trader/domain/models/forex_pair.dart';
import 'package:forex_trader/ui/history/bloc/history_state.dart';
import 'package:forex_trader/ui/history/bloc/history_cubit.dart';

class HistoryScreen extends StatelessWidget {
  final ForexPair forexPair;

  const HistoryScreen({super.key, required this.forexPair});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${forexPair.symbol} History')),
      body: BlocProvider(
        create:
            (context) =>
                HistoryCubit(RepositoryProvider.of<ForexRepository>(context))
                  ..loadData(forexPair.symbol),
        child: const HistoryView(),
      ),
    );
  }
}

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCubit, HistoryState>(
      builder: (context, state) {
        // Используем pattern matching из Dart 3
        return switch (state) {
          HistoryInitial() => const SizedBox.shrink(),
          HistoryLoading() => const Center(child: CircularProgressIndicator()),
          HistoryLoaded() => ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              final dataPoint = state.data[index];
              return ListTile(
                title: Text('Date: ${dataPoint.dateTime}'),
                subtitle: Text('Price: ${dataPoint.high}'),
              );
            },
          ),
          HistoryError() => Center(child: Text(state.message)),
        };
      },
    );
  }
}
