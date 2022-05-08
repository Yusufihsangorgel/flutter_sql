import 'package:flutter/material.dart';
import 'package:flutter_sql/view/user_list.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: UserList()
    );
  }
}