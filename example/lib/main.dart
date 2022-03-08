import 'package:flutter/material.dart';
import 'package:decision_sdk/decision.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Decision example app'),
            ),
            body: DecisionSdk(isConnected: true).home()
        )
    );
  }
}