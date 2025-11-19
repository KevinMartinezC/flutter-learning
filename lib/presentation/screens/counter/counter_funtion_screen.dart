import 'package:flutter/material.dart';

class CounterFuntionScreen extends StatefulWidget {
  const CounterFuntionScreen({super.key});

  @override
  State<CounterFuntionScreen> createState() => _CounterFuntionScreenState();
}

class _CounterFuntionScreenState extends State<CounterFuntionScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Funtion Screen"),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              clickCounter = 0;
            });
          }, icon: Icon(Icons.refresh_rounded)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : "s"}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
