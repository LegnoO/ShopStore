import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProvider extends ChangeNotifier {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late User user;
  String currentPassword = "";

  Future<void> login(email, password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    currentPassword = password;
    user = userCredential.user!;
    // String? refreshToken = user?.refreshToken;
    notifyListeners();
  }

  Future<void> updatePasswordHandle(newPassword) async {
    await user?.updatePassword(newPassword);

    notifyListeners();
  }

  bool isLogged() {
    return user != null;
  }
}
