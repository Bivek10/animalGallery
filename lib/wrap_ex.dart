import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap example"),
      ),
      body: Wrap(
        // direction: Axis.horizontal,
        // alignment: WrapAlignment.center,
        // spacing: 8.0,
        // //runAlignment: WrapAlignment.center,
        // runSpacing: 8.0,
        //crossAxisAlignment: WrapCrossAlignment.center,
        // textDirection: TextDirection.rtl,
        // verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "W1",
                textScaleFactor: 2.5,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "W2",
                textScaleFactor: 2.5,
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "W3",
                textScaleFactor: 2.5,
              ),
            ),
          ),
          Container(
            color: Colors.indigo,
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "W4",
                textScaleFactor: 2.5,
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "W5",
                textScaleFactor: 2.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
