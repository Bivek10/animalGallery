import 'dart:math';

import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  PageViewExample({Key? key}) : super(key: key);

  List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Example..."),
      ),
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            3,
            (index) => Container(
              child: Center(
                child: Text("page $index"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
