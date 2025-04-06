import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forex_trader/data/repositories/forex_repository.dart';
import 'package:forex_trader/data/repositories/forex_repository_remote.dart';
import 'package:forex_trader/data/services/api/finnhub_service.dart';
import 'package:logging/logging.dart';
import 'ui/main_page.dart';

void main() {
   _setupLogging();

  final forexRepository = ForexRepositoryRemote(
    finnhubService: FinnhubServiceImpl(),
  );

  runApp(
    RepositoryProvider<ForexRepository>(
      create: (context) => forexRepository,
      child: FXTMApp(),
    ),
  );


}

class FXTMApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FXTM Forex Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
}


void _setupLogging() {
  Logger.root.level =
      Level.ALL; // Set the logging level (ALL, INFO, WARNING, etc.)
  Logger.root.onRecord.listen((LogRecord record) {
    // Print logs to the console
    developer.log(
      '${record.level.name}: ${record.time}: ${record.message}',
      name: record.loggerName,
      error: record.error,
      stackTrace: record.stackTrace,
    );
  });
}
