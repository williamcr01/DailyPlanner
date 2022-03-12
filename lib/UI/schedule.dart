import 'package:flutter/material.dart';
import 'package:todo/UI/date_bar.dart';
import 'package:todo/UI/variables.dart' as etc;

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
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
          title: const Text('Schedule'),
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
