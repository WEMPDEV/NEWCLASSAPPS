import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen Two',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
        ElevatedButton(
            onPressed: () {
        Navigator.pushNamed(context, '/one');
        },
            child: const Text(
            'Screen one'
        ),
      ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, '/');
            },
            child: const Text(
                'Prev'
            ),
          ),
      ElevatedButton(
          onPressed: () {
      Navigator.pushNamed(context, '/');
      },
          child: const Text(
          'Back'
      ),
    ),
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, (ModalRoute.withName('/')));
            },
            child: const Text(
                'Absolute Route'
            ),
          ),
    ],
      ),
    );
  }
}
