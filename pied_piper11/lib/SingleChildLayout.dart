import 'package:flutter/material.dart';

class SingleChildWidget extends StatelessWidget {
  const SingleChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.pink,
          width: 300,
          height: 300,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.d5da7862d2ce0812e4fdd679f0fb1f71?rik=1ULF4MUIAS0Sjg&pid=ImgRaw&r=0'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
