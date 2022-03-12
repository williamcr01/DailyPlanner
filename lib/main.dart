import 'package:flutter/material.dart';
import 'package:todo/UI/canvas.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(backgroundColor: Colors.pink),
        ),
        home: const Canvas());
  }
}
