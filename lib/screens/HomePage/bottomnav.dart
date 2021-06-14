import 'package:accucia_task/screens/FavoritePage/fav.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavHome extends StatefulWidget {
  const BottomNavHome({Key? key}) : super(key: key);

  @override
  _BottomNavHomeState createState() => _BottomNavHomeState();
}

class _BottomNavHomeState extends State<BottomNavHome> {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Icon(
                Icons.cottage,
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
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                // ignore: unnecessary_new
                new MaterialPageRoute(
                  // ignore: prefer_const_constructors
                  // ignore: non_constant_identifier_names
                  builder: (Context) => FavoritesPage(),
                ),
              );
            },
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.bookmark_add_outlined,
              color: Colors.black,
            ),
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
