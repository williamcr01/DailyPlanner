import 'package:flutter/material.dart';
import 'package:todo/UI/variables.dart' as etc;
import 'dart:developer';

class DateBar extends StatefulWidget {
  final daysAdded;

  const DateBar({Key? key, this.daysAdded}) : super(key: key);

  @override
  State<DateBar> createState() => _DateBarState();
}

class _DateBarState extends State<DateBar> {
  var date = DateTime.now();
  var daysAdded = 0;

  void prevDate() {
    setState(() {
      date = date.subtract(Duration(days: 1));
      daysAdded--;
    });
    log(date.toString());
  }

  void nextDate() {
    setState(() {
      date = date.add(Duration(days: 1));
      daysAdded++;
    });
    log(date.toString());
  }

  int getDaysAdded() {
    log(daysAdded.toString());
    return daysAdded;
  }

  void setDateStart(d) {
    date = DateTime.now().add(Duration(days: d + daysAdded));
  }

  @override
  Widget build(BuildContext context) {
    setDateStart(widget.daysAdded);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: etc.borderWidth),
        ),
      ),
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
