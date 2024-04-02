import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  bool _isSplashFinished = false;

  bool get isSplashFinished => _isSplashFinished;

  void finishSplash() {
    _isSplashFinished = true;
    notifyListeners();
  }
}