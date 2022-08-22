import 'package:appone/view_todo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController titleTextCtrl = TextEditingController();
  TextEditingController bodyTextCtrl = TextEditingController();
  List<Map> notes = [];
  bool showLoading = false;
  final formkey = GlobalKey<FormState>();

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
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                Text(
                  "Username",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "title is required";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Password"),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Body is required";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    getData();
                    // verifyData();
                    //addData();
                    //  notes.add(singleNote);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Save  "),
                      showLoading
                          ? Container(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.red,
                                // value: 0.8,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void verifyData() {
    Map<String, dynamic> singleNote = {
      "title": titleTextCtrl.text,
      "message": bodyTextCtrl.text
    };
    var response = FirebaseFirestore.instance
        .collection("todolist")
        .where("title", isEqualTo: titleTextCtrl.text)
        .where(
          "message",
          isEqualTo: bodyTextCtrl.text,
        )
        .snapshots();
    response.first.then((value) {
      print(value.docs.first.data());
      return value.docs.first;
    });
  }

  void addData() {
    if (formkey.currentState!.validate()) {
      setState(() {
        showLoading = true;
      });

      Map<String, dynamic> singleNote = {
        "title": titleTextCtrl.text,
        "message": bodyTextCtrl.text
      };
      var response =
          FirebaseFirestore.instance.collection("todolist").add(singleNote);

      response.then((value) {
        if (value.id.isNotEmpty) {
          setState(() {
            showLoading = false;
          });
          titleTextCtrl.clear();
          bodyTextCtrl.clear();
          Fluttertoast.showToast(
              msg: "Data added succesfully!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
          print("data is add and ref id is ${value.id}");
        } else {
          setState(() {
            showLoading = false;
          });
          Fluttertoast.showToast(
              msg: "sorry! unable to save data",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          print("sorry! unable to save data");
        }
      });
    }
  }

  void getData() {
    var response = FirebaseFirestore.instance.collection("todolist").get();
    response.then((value) {
      List x = [];
      //  print(value.docs.length);
      value.docs.forEach((element) {
        x.add(element.data());
      });

      print("firebase datas are: $x");
      //return value.docs.first;
    });
  }
}
