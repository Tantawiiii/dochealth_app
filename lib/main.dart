import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Doc Health app',
    //  home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

