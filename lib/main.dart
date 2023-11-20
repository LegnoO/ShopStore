import 'package:final_project/home_page_widget.dart';
import 'package:final_project/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePageWidget(),
      routes: {
        '/homepage': (context) => const HomePageWidget(),
        // '/product-detail': (context) => const ProductDetailWidget(),
      },
    );
  }
}
