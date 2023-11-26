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
    print(user.uid);
    notifyListeners();
  }

  Future<void> createAccount(name, email, password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    currentPassword = password;
    user = userCredential.user!;

    await user.updateDisplayName(name);
    await user.reload();
    user = FirebaseAuth.instance.currentUser!;

    notifyListeners();
  }

  Future<void> logoutAccount() async {
    await FirebaseAuth.instance.signOut();

    notifyListeners();
  }

  Future<void> updatePasswordHandle(newPassword) async {
    await user.updatePassword(newPassword);

    notifyListeners();
  }

  Future<void> updateProfile(newName) async {
    await user.updateDisplayName(newName);
    await FirebaseAuth.instance.currentUser?.reload();
    user = FirebaseAuth.instance.currentUser!;
    notifyListeners();
  }

  bool isLogged() {
    return user.refreshToken != null;
  }
}
