import 'package:flutter/material.dart';

class flutterButton extends StatefulWidget {
  const flutterButton({super.key});

  @override
  State<flutterButton> createState() => _flutterButtonState();
}

class _flutterButtonState extends State<flutterButton> {
  String dropdownValue = 'Option 1';
  String drop ='Contact Me';
  dynamic _selectedMenu = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              'Buttons'
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
          const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () { print('i was tapped');},
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(onPressed: () {
          print('object');
        }, child: const Text('text button'),
        ),
        const SizedBox(
          height: 10,
        ),
        IconButton(onPressed: () {
          print('I am an Icon');
        },
          icon: const Icon(Icons.import_contacts),
        ),
        const SizedBox(
          height: 10,
        ),
        OutlinedButton(onPressed: () {
          print('This is OUTLINED');
        }, child: const Text('Out lined button'),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: () {
          print('This is Elevated');
        }, child: const Text('Elevated button'),
        ),
        const SizedBox(
          height: 15,
        ),
        DropdownButton(value: dropdownValue,
            onChanged: (String? newValue) {
              // updated on change callback
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: ['Option 1','Option 2','Option 3','Option 4']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );

            }).toList(),
    ),
            SizedBox(height: 10,),
            DropdownButton(
              value: drop,
              items: ['Sort Me','Contact Me','Check Me']
                .map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
                onChanged: (String? newValue){
              setState(() {
                drop = newValue!;
              });
                },
            ),
            PopupMenuButton<int>( initialValue: _selectedMenu,
              onSelected: (int result) {
                setState(() {
                  _selectedMenu = result;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text('About Us'),
                ),
                const PopupMenuItem<int>(
                  value: 2,
                  child: Text('Contact Us'),
                ),
                const PopupMenuItem<int>(
                  value: 3,
                  child: Text('Privacy Policy'),
                ),
                const PopupMenuItem<int>(
                  value: 4,
                  child: Text('Profile Page',)
                ),
                const PopupMenuItem<int>(
                    value: 5,
                    child: Text('Profile Page',)
                ),
                const PopupMenuItem<int>(
                    value: 6,
                    child: Text('Profile Page',)
                ),
              ],
            )
    ],
    ),
    );
  }
}

