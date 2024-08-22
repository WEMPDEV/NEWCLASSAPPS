import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: orientation == Orientation.portrait
        ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildresponsiveContainer(screenWidth, screenHeight),
            _buildresponsiveContainer1(screenWidth, screenHeight)
          ],
        ):Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildresponsiveContainer(screenWidth, screenHeight)

          ],
        ),
      ),
    );
  }
}

Widget _buildresponsiveContainer(double screenwidth, double screenheight){
  // calculate the container size based on the screen width and height
  var containerWidth = screenwidth * 0.6;
  var containerHeight = screenwidth * 0.2;

  return Container(
    width: containerWidth,
    height: containerHeight,
    color: Colors.redAccent,
  );
}
Widget _buildresponsiveContainer1(double screenwidth, double screenheight){
  // calculate the container size based on the screen width and height
  var containerWidth = screenwidth * 0.6;
  var containerHeight = screenwidth * 0.2;

  return Container(
    width: containerWidth,
    height: containerHeight,
    color: Colors.blue,
  );
}