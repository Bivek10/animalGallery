import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewTodo extends StatefulWidget {
  final List<Map> notes;

  const ViewTodo({Key? key, required this.notes}) : super(key: key);

  @override
  State<ViewTodo> createState() => _ViewTodoState();
}

class _ViewTodoState extends State<ViewTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo-list"),
      ),
      body: ListView(
        children: List.generate(
          widget.notes.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 220, 218, 218)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.notes[index]["title"])),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.notes[index]["body"]))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
