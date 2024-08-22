import 'package:flutter/material.dart';

class ImageChecker extends StatelessWidget {
  const ImageChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage('images/photo.jpg'));
  }
}
