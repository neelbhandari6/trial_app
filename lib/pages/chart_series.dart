import 'package:charts_flutter/flutter.dart' as charts;
import 'package:trial_app/pages/speech_analysis.dart';
import 'package:trial_app/pages/chart_vis.dart';
import 'package:flutter/material.dart';
import 'package:trial_app/pages/chart_home.dart';
class SubscriberChart extends StatelessWidget {
  final List<Counter> data;

  SubscriberChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Counter, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (Counter series, _) => series.title,
          measureFn: (Counter series, _) => series.clicks,
          colorFn: (Counter series, _) => series.barColor)
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Speech Analysis Text",
                style: Theme.of(context).textTheme.body2,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}









