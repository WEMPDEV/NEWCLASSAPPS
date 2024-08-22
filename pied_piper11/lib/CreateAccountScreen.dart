import 'package:flutter/material.dart';
import 'package:pied_piper11/BaseScaffold.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
    return BaseScaffold(
      tittle: 'Account Screen',
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Row(
                children: <Widget>[
                  Icon(Icons.add,
                  size: 25,
                  // color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // Image.asset('images/Line.jpg',
                  // width: 300,),
                  SizedBox(
                    // color: Colors.white,
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
                    "CREATE AN ACCOUNT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      // color: Colors.white70,
                    ),
                  ),
                  Icon(Icons.star_half,
                    color: Colors.orange,)
                ],
              ),
              const Row(
                children: [
                  Text('Welcome! Please Enter Your Details',
                    style: TextStyle(
                      // color: Colors.white70,
                    ),)
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Name:',
                        style: TextStyle(
                          // color: Colors.white70,
                          fontSize: 17,
                        ),),
                     SizedBox(
                       width: 350,
                       child: Card(
                        color: Colors.grey,
                        child:
                        ListTile(
                          leading: Icon(Icons.person,
                               // color: Colors.white,
                          ),
                          title: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter Your Name',
                                hintStyle: TextStyle(
                                  // color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                        ),
                    ),
                     ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Email:',
                        style: TextStyle(
                          // color: Colors.white70,
                          fontSize: 17,
                        ),),
                      SizedBox(
                        width: 350,
                        child: Card(
                          color: Colors.grey,
                          child:
                          ListTile(
                            leading: Icon(Icons.mail,
                              // color: Colors.white,
                            ),
                            title: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter Your Email',
                                hintStyle: TextStyle(
                                  // color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
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
                        child: Card(
                          color: Colors.grey,
                          child:
                          ListTile(
                            leading: const Icon(Icons.wifi_password,
                              // color: Colors.white,
                            ),
                            title: TextField(
                              controller: _passwordController,
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter Your Password',
                                hintStyle: const TextStyle(
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
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                    fillColor: const WidgetStatePropertyAll<Color>(Color(0XFFffffff)),
                    value: (false),
                    onChanged: (value) {},
                  ),
                  const Text(
                    'Must Be At least 8 Characters',
                    style: TextStyle(
                        // color: Colors.white,
                    fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
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
                      Navigator.pushNamed(context, '/Otp');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 150), backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('Sign Up',
                      style: TextStyle(
                          // color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                    'images/facebook.jpg',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text('Sign Up With Facebook',
                    style: TextStyle(
                      // color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 12,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 90),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        // color: Colors.white70
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
                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 90),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(side: const BorderSide(
                        // color: Colors.white70
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.pushNamed(context, '/signin');
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      // primary: Colors.transparent,
                      // shadowColor: Colors.transparent,
                    ),
                    child: const Text('Already have an Account? Login',
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
