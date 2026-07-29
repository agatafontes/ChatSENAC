import 'package:flutter/material.dart';
import 'package:primeiro_app/paginas/login.dart' show Login;
import 'package:primeiro_app/utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Login(),
          ),
        ),
      ),
    );
  }
}
