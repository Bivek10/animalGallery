import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InkWellExample extends StatelessWidget {
  const InkWellExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
            )),
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
