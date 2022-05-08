import 'package:flutter/material.dart';
import 'package:flutter_sql/view/model/user_database_provider.dart';
import 'package:flutter_sql/view/model/user_model.dart';
import 'package:flutter_sql/view/user_list.dart';

abstract class UserListViewModel extends State<UserList> {
late UserDatabaseProvider userDatabaseProvider;
UserModel userModel = UserModel();
List<UserModel> userList = [];

Future getUserList() async {
  userList  = await userDatabaseProvider.getList();
  setState(() {});
  }

  @override
  void initState() {
    super.initState();
    userDatabaseProvider = UserDatabaseProvider();
    userDatabaseProvider.open();
  }

  Future<void> saveModel() async {
    final result = await userDatabaseProvider.insert(userModel);
    print(result);
  }

    
 
}
