import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductUploader extends StatefulWidget {
  const ProductUploader({Key? key}) : super(key: key);

  @override
  State<ProductUploader> createState() => _ProductUploaderState();
}

class _ProductUploaderState extends State<ProductUploader> {
  List<Map<String, dynamic>> products = [
    {
      "name": "Laptop",
      "price": "Rs. 2000",
      "qty": 5,
      "model": "Apple",
      "details": "This lapton contains, high power cpu.",
      "image":
          "https://www.btplanet.com.np/storage/backend/assets/images/product/16278952873rgs-LAPTOP-LENOVO-IP3.jpg"
    },
    {
      "name": "Mobile",
      "price": "Rs. 2000",
      "qty": 5,
      "model": "Apple",
      "details": "This lapton contains, high power cpu.",
      "image":
          "https://www.btplanet.com.np/storage/backend/assets/images/product/16278952873rgs-LAPTOP-LENOVO-IP3.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            for (var i = 0; i < products.length; i++) {
              Map<String, dynamic> singlepoduct = products[i];
              FirebaseFirestore.instance
                  .collection("products")
                  .add(singlepoduct);
            }
          },
          child: Text("upload product"),
        ),
      ),
    );
  }
}
