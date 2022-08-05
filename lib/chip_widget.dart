import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chip example"),
      ),
      body: Center(
        child: Chip(
          backgroundColor: Colors.purple,
          avatar: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 15,
            child: Icon(
              Icons.add,
            ),
          ),
          deleteIcon: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 15,
            child: Icon(
              Icons.remove,
            ),
          ),
          onDeleted: () {},
          label: Text(
            "1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
