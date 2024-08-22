import 'package:flutter/material.dart';
import 'dart:async';

class Streambuild extends StatefulWidget {
  const Streambuild({super.key});

  @override
  State<Streambuild> createState() => _StreambuildState();
}

class _StreambuildState extends State<Streambuild> {
  final StreamController<List<Map<String, String>>> _streamController =
  StreamController<List<Map<String, String>>>();
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  @override
  void dispose() {
    _streamController.close();
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage(String message) {
    _messages.add({'type': 'user', 'text': message});
    _streamController.add(List.from(_messages));

    Future.delayed(const Duration(seconds: 2), () {
      _messages.add({'type': 'bot', 'text': 'Bot Says: $message'});
      _streamController.add(List.from(_messages));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          'Chat Bot',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: _streamController.stream,
              builder: (context, snapshots) {
                if (!snapshots.hasData || snapshots.data!.isEmpty) {
                  return const Center(
                    child: Text(
                      'No Message Yet',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshots.data!.length,
                    itemBuilder: (context, index) {
                      var message = snapshots.data![index];
                      bool isUser = message['type'] == 'user';
                      return Align(
                        alignment:
                        isUser ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: isUser ? Colors.blue : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            message['text']!,
                            style: TextStyle(
                              color: isUser ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: 'Send Message'),
                    onSubmitted: (value) {
                      _sendMessage(value);
                      _controller.clear();
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
//
// class Streambuild extends StatefulWidget {
//   const Streambuild({super.key});
//
//   @override
//   State<Streambuild> createState() => _StreambuildState();
// }
//
// class _StreambuildState extends State<Streambuild> {
//   final StreamController<List<String>> _streamController =
//   StreamController<List<String>>();
//   final TextEditingController _controller = TextEditingController();
//   List<String> _message = [];
//
//   @override
//   void dispose() {
//     _streamController.close();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _SendMessge(String message) {
//     _message.add('User Says: ${message}');
//     _streamController.add(List.from(_message));
//
//     Future.delayed(Duration(seconds: 2), () {
//       _message.add('Bot Says:$message');
//       _streamController.add(List.from(_message));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.cyanAccent,
//       appBar: AppBar(
//         backgroundColor: Colors.cyan,
//         title: Text(
//           'Chat Bot',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//               child: StreamBuilder(
//                   stream: _streamController.stream,
//                   builder: (context, snapshots) {
//                     if (!snapshots.hasData || snapshots.data!.isEmpty) {
//                       return Center(
//                         child: Text(
//                           'No Message Yet',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20),
//                         ),
//                       );
//                     } else {
//                       return ListView.builder(
//                         itemCount: snapshots.data!.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text(snapshots.data![index]),
//                           );
//                         },
//                       );
//                     }
//                   })),
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: Row(
//               children: [
//                 Expanded(
//                     child: TextField(
//                       controller: _controller,
//                       decoration: InputDecoration(labelText: 'Send Message'),
//                       onSubmitted: (value) {
//                         _SendMessge(value);
//                         _controller.clear();  // Clear the text field after sending the message
//                       },
//                     )),
//                 IconButton(
//                   onPressed: () {
//                     if (_controller.text.isNotEmpty) {
//                       _SendMessge(_controller.text);
//                       _controller.clear();  // Clear the text field after sending the message
//                     }
//                   },
//                   icon: Icon(
//                     Icons.send,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
//
// class Streambuild extends StatefulWidget {
//   const Streambuild({super.key});
//
//   @override
//   State<Streambuild> createState() => _StreambuildState();
// }
//
// class _StreambuildState extends State<Streambuild> {
//   final StreamController<List<String>> _streamController =
//       StreamController<List<String>>();
//   List<String> _message = [];
//   @override
//   //function to dispose used when we have no need for the data again
//   void dispose(){
//     _streamController.close();
//     super.dispose();
//   }
//   // this is used to send and store data
//   void _SendMessge(String, message){
//     _message.add('User Says: ${message}');
//     _streamController.add(List.from(_message));
//
//     // this method is used to simulate bot response after a short delay
//     Future.delayed(Duration(seconds: 2), () {
//       _message.add('Bot Says:$message');
//       _streamController.add(List.from(_message));
//     });
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.cyanAccent,
//     appBar: AppBar(
//     backgroundColor: Colors.cyan,
//       title: Text('Chat Bot',style:
//         TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         ),),
//       centerTitle: true,
//     ),
//       body: Column(
//     children: [
//       Expanded(child: StreamBuilder(
//           stream: _streamController.stream,
//           builder: (context,snapshots){
//             if (!snapshots.hasData || snapshots.data!.isEmpty){
//               return Center(
//                 child: Text('No Message Yet',style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20
//                 )),
//               );
//             } else {
//               return ListView.builder(
//                 itemCount: snapshots.data!.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(snapshots.data![index]),
//          );
//        },
//       );
//   }})),
//       Padding(padding: EdgeInsets.all(8),
//         child: Row(
//           children: [
//             Expanded(child: TextField(
//               decoration: InputDecoration(
//                   labelText: 'Send Message'),
//               onSubmitted: (value){
//                 _SendMessge(String, value);
//                 },)),
//             IconButton(onPressed: (){
//               TextEditingController _controller = TextEditingController();
//               if (_controller.text!.isNotEmpty){
//                 _SendMessge(String, _controller.text);}},
//               icon:Icon(Icons.send,color: Colors.blue,),)],),),],
//       ),
//     );
//   }
// }
