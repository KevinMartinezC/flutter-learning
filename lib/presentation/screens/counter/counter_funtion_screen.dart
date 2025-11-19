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
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded),
          ),
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
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          CustomButton(icon: Icons.refresh_outlined),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.exposure_minus_1_outlined),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.plus_one),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;

  const CustomButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: () {},
       child: Icon(icon)
       );
  }
}
