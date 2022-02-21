import 'package:flutter/material.dart';
import './screens/login.dart';

void main() {
  runApp(Dummy_app());
}
class Dummy_app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF1976D2)
      ),
      home: LoginScreen(),
    );
  }
}