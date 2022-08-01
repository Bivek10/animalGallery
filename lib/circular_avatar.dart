import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircularAvatars extends StatelessWidget {
  const CircularAvatars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextFieldExamplle(),
      // body: Center(
      //   child: CircleAvatar(
      //     backgroundColor: Colors.orange,
      //     radius: 100,
      //     backgroundImage: AssetImage("assets/images/elep.jpeg"),
      //   ),
      // ),
    );
  }
}

class TextFieldExamplle extends StatelessWidget {
  TextFieldExamplle({Key? key}) : super(key: key);

  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: TextFormField(
                  controller: usernameCtrl,
                  // keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(
                      "Username",
                    ),
                    hintText: "example@gmail.com",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: TextFormField(
                  controller: passwordCtrl,
                  obscureText: true,
                  // keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(
                      "Password",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ElevatedButton(
                  onPressed: () {
                    print("The user name  is : ${usernameCtrl.text}");
                    print("The password   is : ${passwordCtrl.text}");
                  },
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
