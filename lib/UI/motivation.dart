import 'package:flutter/material.dart';
import 'package:todo/UI/date_bar.dart';
import 'package:todo/UI/variables.dart' as etc;

class Motivation extends StatefulWidget {
  const Motivation({Key? key}) : super(key: key);

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
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
          title: const Text('Motivation'),
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
