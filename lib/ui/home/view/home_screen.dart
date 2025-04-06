import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forex_trader/ui/history/history_screen.dart';

import '../../../data/repositories/forex_repository.dart';
import '../bloc/home_cubit.dart';
import '../bloc/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              HomeCubit(RepositoryProvider.of<ForexRepository>(context))
                ..loadData(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeLoaded) {
          return ListView.separated(
            itemCount: state.data.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final pair = state.data[index];

              // Determine if price went up or down
              bool isPriceUp = pair.change >= 0;

              // Choose the appropriate arrow icon
              IconData arrowIcon =
                  isPriceUp ? Icons.arrow_upward : Icons.arrow_downward;
              Color arrowColor = isPriceUp ? Colors.green : Colors.red;

              return ListTile(
                leading: Icon(arrowIcon, color: arrowColor),
                title: Text(
                  pair.symbol,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  'Price: ${pair.currentPrice.toStringAsFixed(4)}',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${pair.change >= 0 ? '+' : ''}${pair.change.toStringAsFixed(4)}',
                      style: TextStyle(
                        color: arrowColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '${pair.percentChange >= 0 ? '+' : ''}${pair.percentChange.toStringAsFixed(2)}%',
                      style: TextStyle(color: arrowColor, fontSize: 12),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryScreen(forexPair: pair),
                    ),
                  );
                },
              );
            },
          );
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('Unknown state'));
        }
      },
    );
  }
}
