import 'package:flutter/material.dart';

class Stackss extends StatelessWidget {
  const Stackss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 200,
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      color: const Color(0XFF0F2437),
                      height: 700,
                      width: 450,
                    ),
                  ),
                  Positioned(
                    bottom: 400,
                    right: 0,
                    child: Container(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset(
                          'images/benz.jpg',
                          width: 450,
                          height: 400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        const Text(
                          'LET\'S MAKE\nA TRIP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        TextButton(
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Color(0xFFff7a01),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/one');
                          },
                          child: const Text(
                            style: TextStyle(color: Colors.white),
                            'Screen One',
                          ),),

                            TextButton(
                              style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(
                                  Color(0xFFff7a01),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/two');
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.white),
                                'Screen Two',
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
