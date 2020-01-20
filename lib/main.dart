import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Beautify",
      theme: ThemeData(
        //primarySwatch: Colors.pink[900],
        primaryColor: Color.fromARGB(255, 72, 72, 240)
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}