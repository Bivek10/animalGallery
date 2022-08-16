import 'package:flutter/material.dart';

class FutureBuilderEx extends StatefulWidget {
  const FutureBuilderEx({Key? key}) : super(key: key);

  @override
  State<FutureBuilderEx> createState() => _FutureBuilderExState();
}

class _FutureBuilderExState extends State<FutureBuilderEx> {
  @override
  void initState() {
    super.initState();
    retivevalue();
  }

  void retivevalue() async {
    int x = await futureFunction();
    print(x);
  }

  Future<int> futureFunction() {
    return Future.delayed(Duration(seconds: 5), () {
      return 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future example"),
      ),
      body: Container(
        child: FutureBuilder(
          future: futureFunction(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                child: Center(
                  child: Text(snapshot.data.toString()),
                ),
              );
            } else if (snapshot.hasError) {
              return Container(
                child: Center(
                  child: Text("error"),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }),
        ),
      ),
    );
  }
}
