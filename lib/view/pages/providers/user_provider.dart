// import 'dart:developer';

// import 'package:flutter/material.dart';

// import '../../../models/user_model.dart';
// import '../../../services/user_login.dart';

// class UserProvider with ChangeNotifier {
//   Future signUpUser(UserModel user, String localId) async {
//     await Services().postUser(user);
//     //TODO if success, create user object in realtime db
//     notifyListeners();
//   }

//   UserModel _user = UserModel();
//   // List<UserModel> users = [];

//   // Future setUsers() async {
//   //   users = await Services().getUsers();
//   //   notifyListeners();
//   // }

//   Future<void> createUser(UserModel user) async {
//     _user = user;
//     notifyListeners();
//   }

//   Future updateUser(UserModel user) async {
//     await Services().updateUser(user);
//     //await setUser(user);
//     notifyListeners();
//   }
// }



import 'package:flutter/material.dart';

import '../../../models/user_model.dart';
import '../../../services/user_login.dart';

class UserProvider with ChangeNotifier {
  Future addUser(UserModel user) async {
    await Services().postUser(user);
    notifyListeners();
  }

  List<UserModel> users = [];

  Future setUsers() async {
    users = await Services().getUsers();
    notifyListeners();
  }

  Future deleteUser(UserModel user) async {
    await Services().deleteUser(user.id!);
    setUsers();
    notifyListeners();
  }

  Future updateUser(UserModel user) async {
    await Services().updateUser(user);
    await setUsers();
    notifyListeners();
  }
}
