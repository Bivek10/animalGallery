import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GestureDectExmp extends StatelessWidget {
  const GestureDectExmp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("making widget clickable");
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Text("I am Gesture widget"),
          ),
        ),
      ),
    );
  }
}
