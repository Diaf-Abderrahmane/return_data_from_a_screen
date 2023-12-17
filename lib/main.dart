import 'package:flutter/material.dart';
import 'package:return_data_from_a_screen/pages/page1.dart';
import 'package:return_data_from_a_screen/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Page1(),
        '/page2': (context) => const Page2(),
      },
    );
  }
}
