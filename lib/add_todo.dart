import 'package:appone/view_todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController titleTextCtrl = TextEditingController();
  TextEditingController bodyTextCtrl = TextEditingController();
  List<Map> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add note"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewTodo(
                      notes: notes,
                    ),
                  ),
                );
              },
              icon: Icon(
                Icons.list_sharp,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                controller: titleTextCtrl,
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                  fillColor: Color.fromARGB(255, 221, 220, 220),
                  focusColor: Colors.grey,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 223, 223),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 223, 223),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: bodyTextCtrl,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Body",
                  border: InputBorder.none,
                  fillColor: Color.fromARGB(255, 221, 220, 220),
                  focusColor: Colors.grey,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 223, 223),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 223, 223),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Map singleNote = {
                    "title": titleTextCtrl.text,
                    "body": bodyTextCtrl.text
                  };

                  notes.add(singleNote);
                },
                child: Text("Save"),
              )
            ],
          ),
        ));
  }
}
