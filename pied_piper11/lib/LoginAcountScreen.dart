import 'package:flutter/material.dart';
import 'package:pied_piper11/BaseScaffold.dart';
class AccountLogin extends StatefulWidget {
  const AccountLogin({super.key});

  @override
  State<AccountLogin> createState() => _AccountLoginState();
}

class _AccountLoginState extends State<AccountLogin> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  dynamic isPaswword8 = false;
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _checkisPassword8(dynamic value){
    setState(() {
      if( isPaswword8 == value[8]){
        value = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      tittle: 'Login Screen',
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Icon(Icons.add,
                    size: 25,
                    // color: Colors.white,
             ),
                  const SizedBox(
                    width: 15,
                  ),
                  // Image.asset('images/Line.jpg',
                  // width: 300,),
                  Container(
                    color: Colors.orange,
                    width: 300,
                    height: 1,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: <Widget>[
                  Text(
                    "Login To Your Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      // color: Colors.white70,
                    ),
                  ),
                  Icon(Icons.star_border,
                    color: Colors.orange,)
                ],
              ),
              const Row(
                children: [
                  Text('Welcome Back! Please Enter Your Details',
                    style: TextStyle(
                      // color: Colors.white70,
                    ),)
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Email:',
                        style: TextStyle(
                          // color: Colors.white70,
                          fontSize: 17,
                        ),),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: false,
                            // hintText: 'Enter Your Email',
                            hintStyle: TextStyle(
                              // color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.mail_outline_sharp,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 3,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Password:',
                        style: TextStyle(
                          // color: Colors.white70,
                          fontSize: 17,
                        ),),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                            controller: _passwordController,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              filled: false,
                              errorMaxLines: 10,
                              // hintText: 'Enter Your Password',
                              hintStyle: const TextStyle(
                                // color: Colors.white,
                              ),
                              prefixIcon: Icon(Icons.password,
                                // color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,
                                  // color: Colors.white70,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 3,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                    // fillColor: const WidgetStatePropertyAll<Color>(Color(0XFFffffff)),
                    value: (false),
                    onChanged: _checkisPassword8,
                  ),
                  const Text(
                    'Must Be At least 8 Characters',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 0, 0), // Red
                        Color.fromARGB(255, 0, 0, 255), // Blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.pushNamed(context, '/profile');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 150), backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('Sign In',
                      style: TextStyle(
                          // color: Colors.white
                      ),),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton.icon(
                  onPressed: () {
                    // Handle Facebook Sign-In
                  },
                  icon: Image.asset(
                    'images/goggleicon.jpg',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text('Sign Up With Goggle',
                    style: TextStyle(
                      // color: Colors.white,
                      // backgroundColor: Colors.black,
                      fontSize: 12,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 100),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        // color: Colors.white70
                        style: BorderStyle.solid

                    ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton.icon(
                  onPressed: () {
                    // Handle Facebook Sign-In
                  },
                  icon: Image.asset(
                    'images/facebook.jpg',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text('Sign Up With Facebook',
                    style: TextStyle(
                      // color: Colors.white,
                      // backgroundColor: Colors.black,
                      fontSize: 12,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 90),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(side: const BorderSide(
                         // color: Colors.white70,
                      style: BorderStyle.solid
                    ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  color: Colors.grey[850],
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16)
                      // primary: Colors.transparent,
                      // shadowColor: Colors.transparent,
                    ),
                    child: const Text('Dont have an Account? Sign Up',
                      style: TextStyle(
                        // color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
