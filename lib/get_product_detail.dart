import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Map<String, dynamic>> productdata = [];

  Future<List<Map<String, dynamic>>> getData() async {
    productdata.clear();
    var response = await FirebaseFirestore.instance.collection("xy").get();
    response.docs.forEach((element) {
      productdata.add(element.data());
    });
    return productdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, data) {
          if (data.hasData) {
            // load data
          }
          if (data.hasError) {
            //display error message
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
