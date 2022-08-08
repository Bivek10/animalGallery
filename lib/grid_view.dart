import 'dart:math';

import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  GridViewExample({Key? key}) : super(key: key);

  List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Example..."),
      ),
      body: Container(
        child: GridView.count(
            //crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(100, (index) {
              Color currentColor = colors[Random().nextInt(colors.length)];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print("You have clicked $index");
                  },
                  child: Container(
                    width: 50,
                    height: 100,
                    color: currentColor,
                    child: Center(
                      child: Text("index: $index"),
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
