import 'package:flutter/material.dart';
import 'package:todo/UI/date_bar.dart';
import 'package:todo/UI/variables.dart' as etc;

class Goals extends StatefulWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: etc.font,
        appBarTheme: AppBarTheme(backgroundColor: etc.colorAppBar),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title: const Text('Goals'),
        ),
        body: Column(
          children: [
            DateBar(),
          ],
        ),
      ),
    );
  }
}
