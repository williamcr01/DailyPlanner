import 'package:flutter/material.dart';
import 'package:todo/UI/canvas.dart';
import 'package:todo/UI/variables.dart' as etc;

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: etc.font,
          appBarTheme: AppBarTheme(backgroundColor: etc.colorAppBar),
        ),
        home: const Canvas());
  }
}
