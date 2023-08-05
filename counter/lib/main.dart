import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Counter",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: const EdgeInsets.all(16),
      child: const Counter(),
    )));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _inc() {
    setState(() {
      _counter++;
    });
  }

  void _dec() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: _dec, child: const Text("Decrement")),
        const SizedBox(
          width: 16,
        ),
        Text(
          "Count: $_counter",
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        ElevatedButton(onPressed: _inc, child: const Text("Increment")),
      ],
    );
  }
}
