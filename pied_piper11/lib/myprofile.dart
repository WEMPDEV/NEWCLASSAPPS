import 'package:flutter/material.dart';
import 'package:pied_piper11/BaseScaffold.dart';

class myprofile extends StatelessWidget {
  const myprofile({super.key});

  get icon => const Icon(Icons.logout);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      tittle: 'My Profile',
      body: Center(
        child: Container(
          color: Colors.blue,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Icon(Icons.logout_outlined),
                  // IconButton(onPressed: (){Navigator.pushNamed(context, '/demo')}, icon: Icon(Icons.logout))
                ],
              ),
              CircleAvatar(
                radius: 50,
                // backgroundColor: Colors.black45,
                backgroundImage: AssetImage('images/potatraitremove.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Emmanuel Gbesan',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(leading: Icon(Icons.call),
                          title: Text('+234 71 567 4857',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(leading: Icon(Icons.email),
                          title: Text('emma@gmail.com',
                            style: TextStyle(color: Colors.blueGrey),
                          ),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}