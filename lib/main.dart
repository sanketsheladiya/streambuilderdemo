import 'dart:developer';

import 'package:flutter/material.dart';

import 'counter.dart';

main() {
  runApp(const MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      body: SafeArea(
          child: StreamBuilder(
              stream: Counter.counterstream,
              builder: (context, snapshot) {
                return Text('U have this many $count Times');
              })),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Counter.setdata = count++;
        //Countstreambuilder.dispose();
      }),
    );
  }
}
