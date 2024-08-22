import 'package:flutter/material.dart';
class myListTile extends StatefulWidget {
  const myListTile({super.key});

  @override
  State<myListTile> createState() => _myListTileState();
}

class _myListTileState extends State<myListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Expanded(child: ListTile(
          leading: const Icon(
            Icons.menu_book,
            color: Colors.blue,
            size: 40,
          ),
            subtitle: const Text('Chapter one'),
            title:
            const Text(
              'Book Pad'
            ),
            trailing: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red,Colors.blue ],
                )
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}
