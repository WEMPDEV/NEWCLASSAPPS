import 'package:flutter/material.dart';

class MyAppe extends StatelessWidget {
  const MyAppe ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Form')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: PasswordForm(),
        ),
      ),
    );
  }
}

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              if (value == int ){
                return 'Please input an Alphabet';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // Process data.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: AlertDialog(
                    title: Text('Proccessing Data'),
                    content:Text(' Proceed'),
                    actions: <Widget>[
                        // TextButton(
                        //   onPressed: (){},
                        //   child:  Text('Close'),
                        // ),
                        // TextButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, '/profile');
                        //   },
                        //   child:  Text('yes'),
                        // ),
                      ],),
                  ),
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
