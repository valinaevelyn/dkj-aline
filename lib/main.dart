import 'package:flutter/material.dart';
import 'package:flutter_alin/login.dart';
import 'package:flutter_alin/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ProfilePage());
  }
}
