import 'package:accucia_task/screens/HomePage/home.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavFav extends StatefulWidget {
  const BottomNavFav({Key? key}) : super(key: key);

  @override
  _BottomNavFavState createState() => _BottomNavFavState();
}

class _BottomNavFavState extends State<BottomNavFav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.white,
        // ignore: prefer_const_constructors
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          // ignore: prefer_const_constructors
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              15.0,
              15.0,
            ),
            blurRadius: 15.0,
            spreadRadius: 5.0,
          ),
          // ignore: prefer_const_constructors
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              15.0,
              15.0,
            ),
            blurRadius: 15.0,
            spreadRadius: 5.0,
          ), //BoxShadow
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                // ignore: unnecessary_new
                new MaterialPageRoute(
                  // ignore: prefer_const_constructors
                  // ignore: non_constant_identifier_names
                  builder: (Context) => HomePage(),
                ),
              );
            },
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          // ignore: prefer_const_constructors
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Icon(
                Icons.bookmark_add,
                color: Colors.black,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 5,
              ),
              // ignore: prefer_const_constructors
              Icon(
                Icons.circle_rounded,
                size: 10,
                color: Colors.black,
              )
            ],
          ),
          // ignore: prefer_const_constructors
          Icon(
            Icons.shopping_cart_rounded,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
