import 'package:flutter/material.dart';
import 'package:todo/UI/date_bar.dart';
import 'dart:developer';

class Canvas extends StatefulWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  State<Canvas> createState() => _CanvasState();
}

class _CanvasState extends State<Canvas> {
  var appBar = AppBar(
    centerTitle: true,
    title: const Text('ToDo'),
  );
  static const borderWidth = 1.2;
  static const fontSizeTitle = 28.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: Column(
          children: [
            DateBar(),
            Row(children: [
              // Create two rows to store the interface in
              Column(
                // In the first row create a column with two objects
                children: [
                  InkWell(
                    child: Container(
                      child: const Text('Schedule',
                          style: TextStyle(fontSize: fontSizeTitle)),
                      // Calculate height and width depending on screen size
                      height: (MediaQuery.of(context).size.height -
                              appBar.preferredSize.height -
                              MediaQuery.of(context).padding.top -
                              MediaQuery.of(context).size.height * 0.1) /
                          2,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(width: borderWidth),
                            bottom: BorderSide(width: borderWidth),
                            top: BorderSide(width: borderWidth)),
                      ),
                    ),
                    onTap: () {
                      log('Tap Schedule');
                    },
                  ),
                  InkWell(
                    child: Container(
                      child: const Text('To Do',
                          style: TextStyle(fontSize: fontSizeTitle)),
                      // Calculate height and width depending on screen size
                      height: (MediaQuery.of(context).size.height -
                              appBar.preferredSize.height -
                              MediaQuery.of(context).padding.top -
                              MediaQuery.of(context).size.height * 0.1) /
                          2,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(width: borderWidth),
                        ),
                      ),
                    ),
                    onTap: () {
                      log('Tap To Do');
                    },
                  ),
                ],
              ),
              Column(
                // In the second row create three objects
                children: [
                  InkWell(
                    child: Container(
                      child: const Text('Goals',
                          style: TextStyle(fontSize: fontSizeTitle)),
                      // Calculate height and width depending on screen size
                      height: (MediaQuery.of(context).size.height -
                              appBar.preferredSize.height -
                              MediaQuery.of(context).padding.top -
                              MediaQuery.of(context).size.height * 0.1) /
                          3,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: borderWidth),
                            top: BorderSide(width: borderWidth)),
                      ),
                    ),
                    onTap: () {
                      log('Tap Goals');
                    },
                  ),
                  InkWell(
                    child: Container(
                      child: const Text('Motivation',
                          style: TextStyle(fontSize: fontSizeTitle)),
                      // Calculate height and width depending on screen size
                      height: (MediaQuery.of(context).size.height -
                              appBar.preferredSize.height -
                              MediaQuery.of(context).padding.top -
                              MediaQuery.of(context).size.height * 0.1) /
                          3,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: borderWidth)),
                      ),
                    ),
                    onTap: () {
                      log('Tap Motivation');
                    },
                  ),
                  InkWell(
                    child: Container(
                      child: const Text('Thoughts',
                          style: TextStyle(fontSize: fontSizeTitle)),
                      // Calculate height and width depending on screen size
                      height: (MediaQuery.of(context).size.height -
                              appBar.preferredSize.height -
                              MediaQuery.of(context).padding.top -
                              MediaQuery.of(context).size.height * 0.1) /
                          3,
                      width: MediaQuery.of(context).size.width / 2,
                      //decoration: const BoxDecoration(),
                    ),
                    onTap: () {
                      log('Tap Thoughts');
                    },
                  ),
                ],
              ),
            ]),
          ],
        ));
  }
}
