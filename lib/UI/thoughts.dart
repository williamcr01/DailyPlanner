import 'package:flutter/material.dart';
import 'package:todo/UI/date_bar.dart';
import 'package:todo/UI/variables.dart' as etc;

class Thoughts extends StatefulWidget {
  const Thoughts({Key? key}) : super(key: key);

  @override
  State<Thoughts> createState() => _ThoughtsState();
}

class _ThoughtsState extends State<Thoughts> {
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
          title: const Text('Thoughts'),
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
