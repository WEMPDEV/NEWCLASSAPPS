import 'package:flutter/material.dart';
class InputandDailog extends StatefulWidget {
  const InputandDailog({super.key});

  @override
  State<InputandDailog> createState() => _InputandDailogState();
}

class _InputandDailogState extends State<InputandDailog> {
  String  _inputText = ' ';
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1890),
        lastDate: DateTime(2120),
        );
  if (picked != null && picked != _selectedDate ) {
    setState(() {
      _selectedDate = picked;
  });
  }
}

  Future<void> _selectTime(BuildContext context) async{
    final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime ) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: const Text('Flutter Demo For Input & Output'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
                onChanged: (value) {
                  setState(() {
                    _inputText = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Enter Text here',
                  filled: true,
                  fillColor: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              'Entered Text: $_inputText'),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              _selectDate(context);
            },
            child: const Text('Select Date'),
            ),
            const SizedBox(height: 20,),
            Text('Selected Date: ${_selectedDate.toString().split(' ')[0]}'),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () => _selectTime(context),
            child: const Text('Select Time'),
            ),
            Text('Selected Date: ${_selectedTime.format(context)}'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Dialog Title'),
                      content: const Text('Do You Want To View My Profile'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Close'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          child: const Text('yes'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

