import 'package:flutter/material.dart';

import 'widgets/bottomTabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: Colors.indigo[700],
      ),
      home: const BottomTabs(),
      );
  }
}
