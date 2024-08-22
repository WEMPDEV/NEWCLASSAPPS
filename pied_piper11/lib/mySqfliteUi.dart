import 'package:flutter/material.dart';
import 'SqfliteHelper.dart';

class mySqfliteUi extends StatefulWidget {
  const mySqfliteUi({super.key});

  @override
  State<mySqfliteUi> createState() => _mySqfliteUiState();
}

class _mySqfliteUiState extends State<mySqfliteUi> {
  final Sqflitehelper _dbHelper =Sqflitehelper();
  List<Map<String, dynamic>> _items = [];

  @override
  void initstate() {
    super.initState();
    _refreshItems();
  }

  void _refreshItems() async {
    try {
      List<Map<String, dynamic>> items = await _dbHelper.getitems();
      print("items retrieved from database: $items");

      setState(() {
        _items = items;
      });
    } catch (e) {
      print("error fetching data: $e");
    }
  }

   addItem() async {
    try {
      int id = await _dbHelper.insertItem({'name': "New Item Added"});
      print('Inserted item id: $id');
      _refreshItems();
    } catch (e) {
      print('Error adding data: $e');
    }
  }

   _updateItem(int id) async {
    try {
      await _dbHelper.updateItems({"id": id, "name": "Updated Item"});
      _refreshItems();
    } catch (e) {
      print('Error updating data: $e');
    }
  }

   _deleteItem(int id) async {
    try {
      await _dbHelper.deleteItems(id);
      _refreshItems();
    } catch (e) {
      print("Error deleting item: $e");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(' SqFlite Database Ui',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: _items.isEmpty
          ? Center(
              child: Text("No Items Available",style: TextStyle(color: Colors.red,fontSize: 20),),
            )
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  title: Text(item['name']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => _updateItem(item['id']),
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () => _deleteItem(item['id']),
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: addItem,
      ),
    );
  }
}
