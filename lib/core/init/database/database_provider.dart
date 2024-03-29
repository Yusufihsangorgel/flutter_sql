import 'package:flutter_sql/core/init/database/database_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class DatabaseProvider<T extends DatabaseModel> {
  Future open();
  Future<T> getItem(int id);
  Future<List<T>> getList();
  Future<bool> updateItem(int id, T model);
  Future<bool> removeItem(int id);
  Future<bool> insertItem(T model);

  late Database database;

  Future<void> close() async {
    await database.close();
  }
}
