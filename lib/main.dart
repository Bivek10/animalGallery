// ignore_for_file: avoid_unnecessary_containers

import 'package:appone/circular_avatar.dart';
import 'package:appone/home_page.dart';
import 'package:appone/stack_widget.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        // home: StackExample(),
        home: HomePageMenu());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> datas = [
    {"name": "Panda", "des": "Eat bamboo", "link": "assets/images/panda.jpeg"},
    {"name": "Tiger", "des": "Eat flesh", "link": "assets/images/tiger.jpeg"},
    {"name": "Panda1", "des": "Eat bamboo", "link": "assets/images/panda.jpeg"},
    {
      "name": "Elephent",
      "des": "Elephent eat grass",
      "link": "assets/images/elep.jpeg"
    },
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text(
          "Animal Gallery",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.policy),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: Image.asset(
                  datas[index]["link"],
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                datas[index]["name"],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                datas[index]["des"],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (index > 0) {
                      index--;
                    }
                  });
                },
                child: Icon(Icons.chevron_left),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (index != datas.length - 1) {
                      index++;
                    }
                  });
                },
                child: Icon(
                  Icons.chevron_right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
