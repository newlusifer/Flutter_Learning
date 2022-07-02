import 'package:flutter/material.dart';

class User with ChangeNotifier {
  Object _user_info = {};

  Object get user_info => _user_info;

  void add_user_info(user_data) {
    _user_info = user_data;
    notifyListeners();
  }

  void clear_user_info() {
    _user_info = {};
    notifyListeners();
  }
}
