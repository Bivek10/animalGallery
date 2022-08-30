import 'package:appone/circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircleAvtar extends StatelessWidget {
  const CircleAvtar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Circle Avatar example",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      body: Center(
          child: Material(
        shadowColor: Colors.grey.shade200,
        elevation: 50,
        borderRadius: BorderRadius.circular(70),
        child: CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 70,
          backgroundImage: AssetImage("assets/images/elep.jpeg"),
        ),
      )),
    );
  }
}
