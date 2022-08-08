import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InkWellExample extends StatefulWidget {
  const InkWellExample({Key? key}) : super(key: key);

  @override
  State<InkWellExample> createState() => _InkWellExampleState();
}

class _InkWellExampleState extends State<InkWellExample> {
  bool isHover = false;
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
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            child: isHover
                ? Image.asset("assets/images/elep.jpeg")
                : Image.asset("assets/images/tiger.jpeg"),
          ),
        ),
      ),
    );
  }
}
