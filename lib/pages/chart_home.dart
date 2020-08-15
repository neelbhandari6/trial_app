import 'package:flutter/material.dart';
import 'package:trial_app/pages/chart_vis.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:trial_app/pages/chart_series.dart';
import 'package:trial_app/pages/speech_analysis.dart';
class Visual extends StatelessWidget {

  final List<Counter> data = [
    Counter(
      title: "Stutter",
      clicks: stut_counter,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Counter(
      title: "Uh",
      clicks: uh_counter,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Counter(
      title: "Um",
      clicks: um_counter,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Counter(
      title: "Like",
      clicks: like_counter,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Counter(
      title: "Blank",
      clicks: blank,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Counter(
      title: "Speech gap",
      clicks: gap_counter,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Bar Chart"),
      ),
      body: Center(
          child: SubscriberChart(
            data: data,
          )),
    );
  }}