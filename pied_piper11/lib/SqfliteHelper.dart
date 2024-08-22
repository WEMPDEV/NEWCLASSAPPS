import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class Sqflitehelper{
  static final Sqflitehelper _instance = Sqflitehelper._internal();

  factory Sqflitehelper(){
    return _instance;
  }
  Sqflitehelper._internal();
  Completer<Database>? _dbOpenCompleter;
  late Database _database;

  Future<Database> get database async{
    if(_dbOpenCompleter == null){
      _dbOpenCompleter = Completer();
      _initDatabase();
    }
    return _dbOpenCompleter!.future;
  }
  Future<void> _initDatabase() async {
    String path = join(await  getDatabasesPath(),'simple_db');
    print("Database path: $path");
    _database = await openDatabase(path,
    version: 1,
    onCreate: _onCreate,
    onOpen: (db){
      print("Database Opened");
    },);
    _dbOpenCompleter!.complete(_database);
  }

  Future<void> _onCreate(Database db, int version) async{
    print('Creating Database.....');
    await db.execute('''
    CREATE TABLE items(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
    )
    ''');
    print('Database Created');
  }
  // CRUD OPERATIONS
  // Insert

Future<int> insertItem(Map<String,dynamic> items) async{
    Database db = await database;
    print('Inserting Items :$items');

    return await db.insert('items', items);
}
//retrieve

Future<List<Map<String, dynamic>>> getitems() async{
    Database db = await database;
    print('Fetching Items from database');

    return await db.query('items');
  }
  // Updating
  Future<int> updateItems(Map<String,dynamic> item) async{
    Database db = await database;
    int id = item['id'];
    print('Updating Items :$id');

    return await db.update('items', item, where: "id = ?",whereArgs: [id]);
  }

  // Deleting
  Future<int> deleteItems(int id) async{
    Database db = await database;
    print('Updating Items :$id');

    return await db.delete('items', where: "id = ?",whereArgs: [id]);
  }

}


