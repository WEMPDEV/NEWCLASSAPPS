import 'package:flutter/material.dart';


class responsiveui extends StatefulWidget {
  const responsiveui({super.key});

  @override
  State<responsiveui> createState() => _responsiveuiState();
}

class _responsiveuiState extends State<responsiveui> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    var screenHeight =  MediaQuery.of(context).size.height;
    var screenWidth =  MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: orientation == Orientation.portrait
            ? SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildresponsiveContainer(screenWidth, screenHeight,Colors.redAccent),
            const SizedBox(height: 20,),
            _buildresponsiveContainer2(screenWidth, screenHeight,Colors.blueAccent),
            const SizedBox(height: 20,),
            _buildresponsiveContainer3(screenWidth, screenHeight,Colors.greenAccent),
            const SizedBox(height: 20,),
          ],
        ),): Container(
          color: Colors.lightGreenAccent,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 4,
              mainAxisSpacing: 0,
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  _buildresponsiveContainer(screenWidth, screenHeight,Colors.yellow),
                  _buildresponsiveContainer2(screenWidth, screenHeight,Colors.pinkAccent),
                  _buildresponsiveContainer3(screenWidth, screenHeight,Colors.brown),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget _buildresponsiveContainer(double screenwidth, double screenheight, Color color,){
  // calculate the container size based on the screen width and height
  var containerWidth = screenwidth * 0.2;
  var containerHeight = screenwidth * 0.2;
  Color mycolor = color;

  return Container(
    width: containerWidth,
    height: containerHeight,
    color: mycolor,
  );
}

Widget _buildresponsiveContainer2(double screenwidth, double screenheight, Color color,){
  // calculate the container size based on the screen width and height
  var containerWidth = screenwidth * 0.2;
  var containerHeight = screenwidth * 0.2;
  Color mycolor = color;


  return Container(
    width: containerWidth,
    height: containerHeight,
    color: mycolor,
  );
}

Widget _buildresponsiveContainer3(double screenwidth, double screenheight,Color color,) {
  // calculate the container size based on the screen width and height
  var containerWidth = screenwidth * 0.2;
  var containerHeight = screenwidth * 0.2;
  Color mycolor = color;

  return Container(
    width: containerWidth,
    height: containerHeight,
    color: mycolor,
  );
}
