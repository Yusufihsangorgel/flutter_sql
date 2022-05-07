import 'package:flutter_sql/view/model/user_database_provider.dart';
import 'package:flutter_sql/view/model/user_model.dart';

abstract class UserListViewModel extends State<UserList> {
late UserDatabaseProvider userDatabaseProvider;
UserModel userModel = UserModel();
List<UserModel> userList = [];

Future getUserList() async {
  userList  = await userDatabaseProvider.getList();
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
