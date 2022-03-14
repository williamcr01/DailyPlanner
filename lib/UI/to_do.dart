import 'package:flutter/material.dart';
import 'package:todo/UI/date_bar.dart';
import 'package:todo/UI/variables.dart' as etc;

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
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
          title: const Text('ToDo'),
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
