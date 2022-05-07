import 'package:flutter/material.dart';
import 'package:flutter_sql/view/user_list_view_model.dart';

class UserListView extends UserListViewModel {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton,
      body: Card(
        elevation: 20,
        child: buildCenterBody,
      
      ));
}

  FloatingActionButton get buildFloatingActionButton {
    return FloatingActionButton(
      onPressed: () {
  saveModel();

      },);
  }

  Center get buildCenterBody { 
    return 
  Center(child: buildWrapInputBody,);} 

  Wrap get buildWrapInputBody {
    return Wrap(
 runSpacing: 20,
      children:  [
      TextField(
  onChanged: (value) => userModel.userName = value,
        decoration: const InputDecoration(
          hintText: "UserName",border: OutlineInputBorder()
        ),
      ),
        TextField( onChanged: (value) => userModel.age = int.tryParse(value),
        decoration: const InputDecoration(
          hintText: "Age",border: OutlineInputBorder()
        ),
      ),
       TextField(
          onChanged: (value) => userModel.isMarried = value.isNotEmpty,
        decoration: const InputDecoration(
          hintText: "Is Married",border: OutlineInputBorder()
        ),
      ),
    ],);
  }}
