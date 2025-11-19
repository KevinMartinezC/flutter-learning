
import 'package:flutter/material.dart';
import 'package:learningdart/presentation/screens/counter/counter_funtion_screen.dart';
import 'package:learningdart/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //add const when it will never change
    debugShowCheckedModeBanner: false,
        home: CounterFuntionScreen(),
        theme: ThemeData(
          colorSchemeSeed: Colors.blue
        ),
    );
  }
}