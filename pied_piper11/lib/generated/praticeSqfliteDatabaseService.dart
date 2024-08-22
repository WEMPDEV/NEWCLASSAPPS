import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:pied_piper11/generated/praticeSqfliteHelper.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseService{
  static final DatabaseService _databaseService = DatabaseService._internal();
  factory DatabaseService() => _databaseService;
  DatabaseService._internal();
  
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!; 
  }


 Future<Database> initDatabase() async {
    final getDirectory = await
        getApplicationDocumentDirectory();
    String path = getDirectory.path + '/users.db';
    log(path);
    return await openDatabase( path,
        onCreate: _onCreate,
        onOpen: (db){print("Database Opened");},
        version: 1);
 }
 void _onCreate(Database db, int version) async{
    await db.execute(
      'CREATE TABLE USERS(id TEXT PRIMARY KEY, name TEXT, email TEXT, age INTEGER)'
    );
 }

  getApplicationDocumentDirectory() {

  }

  Future<List<User_model>> getUsers() async {
    final db = await _databaseService.database;
    var data = await db.query('Users');
    List<User_model> users =
    List.generate(data.length, (index) =>
        User_model.fromJson(data[index]));
    return users;
  }
  
  Future<void> insertUser(User_model user) async{
    final db = await _databaseService.database;
    var data = await db.insert('Users',user.toMap());
    log('Inserted $data');
  }

  Future<void> editUser(User_model updatedUser) async{
    final db = await _databaseService.database;
    var data = await db.update('Users', updatedUser.toMap(),where: 'id = ?', whereArgs: [updatedUser.id]);
    log('Updated $data');
  }

  Future<void> deleteUser(String id) async{
    final db = await _databaseService.database;
    var data = await db.delete('Users', where: 'id = ?', whereArgs: [id]);
    log('Deleted $data');
  }

}
