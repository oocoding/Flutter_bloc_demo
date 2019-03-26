import 'package:flutter/material.dart';
import './src/screens/LoginScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "超级应用宝",
      home: LoginScreen(),
    );
  }
}
