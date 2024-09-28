import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart'; // Replace with your actual home screen import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Test',
      home: HomeScreen(), // Replace with your home screen
    );
  }
}
