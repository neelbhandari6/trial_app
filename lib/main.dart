import 'package:flutter/material.dart';
import 'package:trial_app/pages/speech_analysis.dart';
import 'package:trial_app/pages/home.dart';
import 'package:trial_app/pages/login.dart';
import 'package:trial_app/pages/chart_home.dart';
void main() => runApp(MaterialApp(
    initialRoute: 'GoogleSignApp()',
    routes: {
      '/': (context) => GoogleSignApp(),
      '/speech': (context) => Speech(),
      '/visual':(context) => Visual(),
    }
));