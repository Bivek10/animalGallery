import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavExmp extends StatefulWidget {
  const BottomNavExmp({Key? key}) : super(key: key);

  @override
  State<BottomNavExmp> createState() => _BottomNavExmpState();
}

class _BottomNavExmpState extends State<BottomNavExmp> {
  List<Widget> pages = [
    Center(
      child: Text("Home page"),
    ),
    Center(
      child: Text("search page"),
    ),
    Center(
      child: Text("Dashboard"),
    ),
  ];

  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Example"),
      ),
      body: pages[pageindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageindex,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Dashboard"),
        ],
        onTap: (value) {
          print(value);
          setState(() {
            pageindex = value;
          });
        },
      ),
    );
  }
}
