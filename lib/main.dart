import 'package:final_project/providers/user_provider.dart';
import 'package:final_project/screen/create_account.dart';
import 'package:final_project/screen/home_page_screen.dart';
import 'package:final_project/screen/change_password_screen.dart';
import 'package:final_project/screen/login_screen.dart';
import 'package:final_project/screen/product_list.dart';
import 'package:final_project/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:final_project/providers/cart_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBfxzDROw-Vl1FaeuggrcgC72cgYSyR_vU',
      appId: '1:160183454280:web:670b6765a71240d085e67d',
      messagingSenderId: '160183454280',
      projectId: 'flutter-vlu',
      authDomain: 'flutter-vlu.firebaseapp.com',
      databaseURL: 'https://flutter-vlu-default-rtdb.firebaseio.com/',
      storageBucket: 'flutter-vlu.appspot.com',
    ),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginAccountWidget(),
    );
  }
}
