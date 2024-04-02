import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    // Perform login logic here, e.g., validate credentials
    // For simplicity, let's assume login is successful
    _isLoggedIn = true;
    notifyListeners();
  }
}
