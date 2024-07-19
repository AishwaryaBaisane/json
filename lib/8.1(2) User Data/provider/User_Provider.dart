import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json/8.1(2)%20User%20Data/model/User_model.dart';

class UserProvider extends ChangeNotifier
{
  List<UserModel> UserList =[];

  Future<void> JsonParsing()
  async {
    String Json = await rootBundle.loadString('assets/json/user.json');
    List Users = jsonDecode(Json);
    UserList = Users.map((e)=>UserModel.fromJson(e),).toList();
    notifyListeners();
  }
  UserProvider ()
  {
    JsonParsing();
  }

}