import 'package:appone/3d_model.dart';
import 'package:appone/bottom_navigator.dart';
import 'package:appone/grid_view.dart';
import 'package:appone/ink_well_ex.dart';
import 'package:appone/list_view_ex.dart';
import 'package:appone/page_view.dart';
import 'package:appone/row_widget.dart';
import 'package:appone/stack_widget.dart';
import 'package:appone/wrap_ex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

import 'add_todo.dart';
import 'chip_widget.dart';
import 'circle_avtar.dart';
import 'column_ex.dart';
import 'future_builder.dart';
import 'gesture_dectector_ex.dart';

class HomePageMenu extends StatefulWidget {
  const HomePageMenu({Key? key}) : super(key: key);

  @override
  State<HomePageMenu> createState() => _HomePageMenuState();
}

class _HomePageMenuState extends State<HomePageMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.orange,
                ],
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        centerTitle: false,
        title: Text("Widget Examples"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThreeD(),
                  ),
                );
              },
              child: Text("3D-Example"),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GestureDectExmp(),
                  ),
                );
              },
              child: Text("Text Button exmple"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GestureDectExmp(),
                  ),
                );
              },
              child: Text("GestureDectector example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavExmp(),
                  ),
                );
              },
              child: Text("Bottom Navigator  exmp"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNote(),
                  ),
                );
              },
              child: Text("Todo Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CircleAvtar(),
                  ),
                );
              },
              child: Text("Circle Avatar"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChipWidget(),
                  ),
                );
              },
              child: Text("Chip Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StackExample(),
                  ),
                );
              },
              child: Text("Stack Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WrapExample(),
                  ),
                );
              },
              child: Text("Wrap Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColumnExample(),
                  ),
                );
              },
              child: Text("Column Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RowExample(),
                  ),
                );
              },
              child: Text("Row Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListViewExample(),
                  ),
                );
              },
              child: Text("ListView Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewExample(),
                  ),
                );
              },
              child: Text("GridView Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageViewExample(),
                  ),
                );
              },
              child: Text("PageView Example"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FutureBuilderEx(),
                  ),
                );
              },
              child: Text("Future Example"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.qr_code),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "pay now"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      )),
    );
  }
}
