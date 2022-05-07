import 'dart:convert';

import 'package:flutter_sql/view/model/user_model.dart';
import 'package:sqflite/sqflite.dart';

class UserDatabaseProvider {
  String _userDatabaseName = "userDatabase";
  String _userTableName = "userTable";
  int _version = 1;
  late Database database;

  String columnUserName = "userName";
  String columnAge = "age";
  String columnIsMarried = "isMarried";
  String columnId = "id";



 // Database ' i açtık 
  Future<void> open() async {
    database = await openDatabase(
    _userDatabaseName,
    version: _version,
    onCreate: ((db, version) {
     createTable(db);
    }),
    );
  } 
  // tablo oluşturme
  Future<void> createTable(Database db) async {
    await db.execute('''CREATE TABLE $_userTableName ($columnId INTEGER PRIMARY KEY AUTOINCREMENT , 
      $columnUserName VARCHAR(20),
      $columnAge INTEGER ,
      $columnIsMarried BOOLEAN) ''');
  }

// verileri getirme
 Future<List<UserModel>> getList() async {
 if(database != null) open();
  List<Map<String,dynamic>> userMaps = await database.query(_userTableName);

  return userMaps.map((e) => UserModel.fromJson(e)).toList();
  
 }

// id ye göre veri getirme
  Future<UserModel?> getItem(int id) async {
if(database != null) open();
 final userMaps = await database.query(_userTableName,
 where: '$columnId = ?',
 columns: [columnId],
 whereArgs: [id]);

 if (userMaps.isNotEmpty) {
   return UserModel.fromJson(userMaps.first);
 }
 else {
   return null;
  
 }

}

// veri silme
Future<bool> delete(int id) async {
if(database != null) open();
 final userMaps = await database.delete(
   _userTableName,
 where: '$columnId = ?',
 whereArgs: [id]);

return userMaps != null;

}


Future<bool> insert(UserModel model) async {
if(database != null) open();
  final userMaps = await database.insert(
   _userTableName,
   model.toJson(),

   conflictAlgorithm: ConflictAlgorithm.replace,);

return userMaps != null;

}


// veri update etme
Future<bool> update(int id,UserModel model) async {
if(database != null) open();
  final userMaps = await database.update(
   _userTableName,
   model.toJson(),

 where: '$columnId = ?',
 whereArgs: [id]);

return userMaps != null;

}
// db kapatma
void close () async {
  await database.close();
 }
}