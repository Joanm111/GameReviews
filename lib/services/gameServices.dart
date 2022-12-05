import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class gameServices extends ChangeNotifier {
  gameServices() {
    this.getOndisplayGame();
  }

  getOndisplayGame() {
    print("...");
  }
}
