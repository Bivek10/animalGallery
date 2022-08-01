import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag),
              ),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
            ),
            Positioned(
              right: 70,
              top: 200,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 200,
              right: 180,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
