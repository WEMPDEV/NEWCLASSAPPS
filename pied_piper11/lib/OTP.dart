import 'package:flutter/material.dart';
import 'package:pied_piper11/BaseScaffold.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTP();
}

class _OTP extends State<OTP> {
  final _formKey = GlobalKey<FormState>();
  final _otpControllers = List<TextEditingController>.generate(4, (_) => TextEditingController()); // List of controllers for OTP fields (replace 4 with desired number of fields)


  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      tittle: 'OTP Screen',
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
                height: 30,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4, (index) => SizedBox(
                    width: 50,
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                      controller: _otpControllers[index],
                      keyboardType: TextInputType.number,
                      // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      inputFormatters: List.empty(growable: true),
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        suffixStyle: const TextStyle(color: Colors.redAccent),
                        focusColor: const Color(0xFFFFFFFF),
                        filled: true,
                        fillColor: Colors.redAccent,
                        counterText: '', // Hide counter text
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.green),borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter digit $index';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
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
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  color: Colors.grey[870],
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16)
                      // primary: Colors.transparent,
                      // shadowColor: Colors.transparent,
                    ),
                    child: const Text('Dont Recieve The Email?  Click To Resend',
                      style: TextStyle(
                        // color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.popUntil(context, (ModalRoute.withName('/')));
              },
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.black12
                ),
                child: const Text('Back to Login',style: TextStyle(
                    // color: Colors.white70
                ),),),
            ],
          ),
        ),
      ),
    );
  }
}
