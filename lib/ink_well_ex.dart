import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InkWellExample extends StatelessWidget {
  const InkWellExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell example'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("ink well on Tab");
          },
          onDoubleTap: () {
            print("on double tap");
          },
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/elep.jpeg"),
          ),
        ),
      ),
    );
  }
}
