import 'package:flutter/material.dart';

class IndependentWidget extends StatefulWidget {
  const IndependentWidget({super.key});

  @override
  State<IndependentWidget> createState() => _IndependentWidgetState();
}

class _IndependentWidgetState extends State<IndependentWidget> {
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
            Image.network(
                'https://th.bing.com/th/id/R.d5da7862d2ce0812e4fdd679f0fb1f71?rik=1ULF4MUIAS0Sjg&pid=ImgRaw&r=0'
            ),
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
                          backgroundImage: AssetImage('images/man.jpg'),
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
                          backgroundImage: AssetImage('images/dumbbells.jpg'),
                          radius: 65,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('HIT THE GYM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],),
                ),
              ],),
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
                          backgroundImage: AssetImage('images/man.jpg'),
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
                          backgroundImage: AssetImage('images/dumbbells.jpg'),
                          radius: 65,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('HIT THE GYM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],),
                ),
              ],),
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
                          backgroundImage: AssetImage('images/man.jpg'),
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
                          backgroundImage: AssetImage('images/dumbbells.jpg'),
                          radius: 65,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('HIT THE GYM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],),
                ),
              ],),
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
                          backgroundImage: AssetImage('images/man.jpg'),
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
                          backgroundImage: AssetImage('images/dumbbells.jpg'),
                          radius: 65,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('HIT THE GYM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],),
                ),
              ],),
          ],
        ),
      ),
    );
  }
}