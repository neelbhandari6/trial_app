import 'package:flutter/material.dart';
import 'package:trial_app/pages/speech_analysis.dart';
import 'package:trial_app/pages/home.dart';
void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/speech': (context) => Speech(),
    }
));