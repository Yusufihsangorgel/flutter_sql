import 'package:flutter_sql/core/init/database/database_provider.dart';
import 'package:flutter_sql/view/model/user_model.dart';

class UserTestProvider extends DatabaseProvider<UserModel> {
  @override
  Future<UserModel> getItem(int id) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<bool> insertItem(UserModel model) {
    // TODO: implement insertItem
    throw UnimplementedError();
  }

  @override
  Future open() {
    // TODO: implement open
    throw UnimplementedError();
  }

  @override
  Future<bool> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<bool> updateItem(int id, UserModel model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }

}