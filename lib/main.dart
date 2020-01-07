import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // wakelock
    Wakelock.enable();
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(body: Text('This is a sample text widget')));
  }
}
