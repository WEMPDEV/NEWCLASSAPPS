import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FutBuilder extends StatelessWidget {
  const FutBuilder({super.key});

  Future<Map<String, dynamic>>FetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos/2'));

    if (response.statusCode == 200){
      return json.decode(response.body);
    }else{
      throw Exception("Falied to Load Photo,");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF660029),
      ),
      backgroundColor: const Color(0XFFe6005c),
      body: Center(
        child:
        FutureBuilder<Map< String, dynamic>>(
            future: FetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator(backgroundColor: Colors.white,color: Colors.green,);
              } else if (snapshot.hasError){
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(snapshot.data!['url']),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(snapshot.data!['title']),
                  ],
                );
              }
              else {
                return const Text("No Data Fetched");
              }
            },
        ),
      ),
    );
  }
}

