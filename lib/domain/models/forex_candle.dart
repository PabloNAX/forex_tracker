class ForexCandle {
  final DateTime dateTime;
  final double open;
  final double high;
  final double low;
  final double close;
  final int volume;

  ForexCandle({
    required this.dateTime,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.volume,
  });

  factory ForexCandle.fromJson(Map<String, dynamic> json) {
    return ForexCandle(
      dateTime: DateTime.fromMillisecondsSinceEpoch(json['date'] * 1000),
      open: json['open'].toDouble(),
      high: json['high'].toDouble(),
      low: json['low'].toDouble(),
      close: json['close'].toDouble(),
      volume: json['volume'],
    );
  }
}
