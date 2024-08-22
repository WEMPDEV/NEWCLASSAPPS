import 'package:flutter/material.dart';
class Scrollable extends StatefulWidget {
  const Scrollable({super.key});

  @override
  State<Scrollable> createState() => _ScrollableState();
}

class _ScrollableState extends State<Scrollable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Design UI'),
          centerTitle: true,
        ),
        backgroundColor: Colors.purpleAccent,
      body: SingleChildScrollView(
        child:Column(
          children: [
            Image.asset('images/training.jpg',),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10,),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/training.jpg'),
                          radius: 65,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('HIT THE GYM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],

                  ),
                ),
                SizedBox(width: 20,),
                Padding(
                  padding: EdgeInsets.only(right: 10,),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/training.jpg'),
                          radius: 65,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('HIT THE GYM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
