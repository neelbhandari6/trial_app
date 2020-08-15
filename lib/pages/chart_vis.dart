import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class Counter {
  final String title;
  final int clicks;
  final charts.Color barColor;

  Counter(
      {@required this.title,
        @required this.clicks,
        @required this.barColor});
}