import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Example..."),
      ),
      body: Container(
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text("one"),
              ),
            ),
            Container(
              width: 50,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text("Two"),
              ),
            ),
            Container(
              width: 50,
              height: 100,
              color: Colors.yellow,
              child: const Center(
                child: Text("Three"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
