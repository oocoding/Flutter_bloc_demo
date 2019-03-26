import 'package:flutter/material.dart';
import './src/screens/LoginScreen.dart';
import './src/blocs/LoginBlocProvider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBlocProvider(
      child: MaterialApp(
        title: "超级应用宝",
        home: LoginScreen(),
      ),
    );
  }
}
