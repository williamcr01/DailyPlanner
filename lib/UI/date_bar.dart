import 'package:flutter/material.dart';
import 'dart:developer';

class DateBar extends StatefulWidget {
  const DateBar({Key? key}) : super(key: key);

  @override
  State<DateBar> createState() => _DateBarState();
}

class _DateBarState extends State<DateBar> {
  var date = DateTime.now();

  void prevDate() {
    setState(() {
      date = date.subtract(Duration(days: 1));
    });
    log(date.toString());
  }

  void nextDate() {
    setState(() {
      date = date.add(Duration(days: 1));
    });
    log(date.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
              onPressed: prevDate,
              icon: Icon(Icons.navigate_before),
              label: Text('')),
          Text(
            date.day.toString() +
                ' / ' +
                date.month.toString() +
                ' - ' +
                date.year.toString(),
            style: TextStyle(fontSize: 18),
          ),
          TextButton.icon(
              onPressed: nextDate,
              icon: Icon(Icons.navigate_next),
              label: Text('')),
        ],
      ),
    );
  }
}
