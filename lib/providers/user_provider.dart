import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProvider extends ChangeNotifier {
  User? user;

  Future<void> login(email, password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    user = userCredential.user;
    // String? refreshToken = user?.refreshToken;
    notifyListeners();
  }

  bool isLogged() {
    return user != null;
  }
}
