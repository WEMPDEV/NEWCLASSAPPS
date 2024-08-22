import 'package:flutter/material.dart';

class mediaquery extends StatefulWidget {
  const mediaquery({super.key});

  @override
  State<mediaquery> createState() => _mediaqueryState();
}

class _mediaqueryState extends State<mediaquery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(builder: (context, orientation) =>
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                  childAspectRatio: orientation == Orientation.portrait ? 1 : 16/9,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ), itemBuilder: (context, index) => Container(
              color: Colors.pinkAccent,
            ),),),
      ),
    ) ;
  }
}
