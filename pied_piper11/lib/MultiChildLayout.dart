import 'package:flutter/material.dart';

class MultiChildLayout extends StatelessWidget {
  const MultiChildLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        color: Colors.blueGrey,
        child: Container(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  //Expanded(
                  //    child:
                 Card(
                    color: Colors.redAccent,
                    shape: CircleBorder(side: BorderSide.none),
                    child: Icon(Icons.home, size: 50, ),
                  ),
                 // ),
                 // Expanded(
                   //   child:
                Card(
                    color: Colors.blueAccent,
                    shape: CircleBorder(side: BorderSide.none),
                    child: Icon(Icons.message, size: 50, ),
                  ),
                 // ),
                  //Expanded(
                 //   child:
                Card(
                      color: Colors.greenAccent,
                      shape: CircleBorder(side: BorderSide.none),
                      child: Icon(Icons.call, size: 50, ),
                    ),
                  //),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  //Expanded(
                  //    child:
                  Card(
                    color: Colors.redAccent,
                    shape: CircleBorder(side: BorderSide.none),
                    child: Icon(Icons.home, size: 50, ),
                  ),
                  // ),
                  // Expanded(
                  //   child:
                  Card(
                    color: Colors.blueAccent,
                    shape: CircleBorder(side: BorderSide.none),
                    child: Icon(Icons.message, size: 50, ),
                  ),
                  // ),
                  //Expanded(
                  //   child:
                  Card(
                    color: Colors.greenAccent,
                    shape: CircleBorder(side: BorderSide.none),
                    child: Icon(Icons.call, size: 50, ),
                  ),
                  //),
                ],),
            ],
          ),

        ),
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
