import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'package:google_fonts/google_fonts.dart';

// UIs
import 'package:food_app/ui/home.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // wakelock
    Wakelock.enable();
    return MaterialApp(
        title: 'Flutter Demo', theme: appTheme, home: Homepage());
  }

  ThemeData appTheme = new ThemeData(
      primaryColor: Color(0xFFFFD87D),
      accentColor: Color(0xFF82C5BC),
      scaffoldBackgroundColor: Color(0xFFF5F5F5));
}
