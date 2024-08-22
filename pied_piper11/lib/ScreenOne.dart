import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen One',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Row(
        children: [
          ElevatedButton(
          onPressed: () {
    Navigator.pushNamed(context, '/two');
    },
        child: const Text(
        'Screen Two'
    ),
    ),
    const SizedBox(
      width: 10,
    ),
    ElevatedButton(
    onPressed: () {
    Navigator.pushNamed(context, '/');
    },
    child: const Text(
    'Back'
    ),
    ),
        ],
      ),
    );
  }
}
