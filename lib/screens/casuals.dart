import 'dart:convert';

import 'package:accucia_task/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class Casuals extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final product, catogory;
  const Casuals({Key? key, required this.product, required this.catogory})
      : super(key: key);

  @override
  _CasualsState createState() => _CasualsState();
}

class _CasualsState extends State<Casuals> {
  @override
  Widget build(BuildContext context) {
    if (widget.product.isEmpty) {
      // ignore: prefer_const_constructors
      return Scaffold(
        // ignore: prefer_const_constructors
        body: Center(
          // ignore: prefer_const_constructors
          child: Text("No data Available"),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 50),
                child: Text(widget.catogory.toString(),
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              GridView.builder(
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                shrinkWrap: true,
                itemCount: widget.product.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          // ignore: unnecessary_new
                          new MaterialPageRoute(
                            builder: (context) => ProductDetails(
                              productdetails: widget.product[index],
                              productname: widget.product[index]['name'],
                            ),
                          ),
                        );
                      },
                      child: Text(
                        widget.product[index]['name'].toString(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
