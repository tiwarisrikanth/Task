import 'dart:convert';

import 'package:accucia_task/screens/FavoritePage/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    Future getData() async {
      final response = await http.get(
        Uri.parse(
          "https://stark-spire-93433.herokuapp.com/json",
        ),
      );
      if (response.statusCode == 200) {
        return json.decode(response.body)['categories'];
      } else if (response.statusCode == 400) {
        Fluttertoast.showToast(msg: response.body);
      } else if (response.statusCode == 412) {
        Fluttertoast.showToast(msg: response.body);
      } else if (response.statusCode == 500) {
        Fluttertoast.showToast(msg: response.body);
      }
    }

    return Scaffold(
        body: Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // SafeArea(
        //   child: SingleChildScrollView(
        //     child: FutureBuilder(
        //       future: getData(),
        //       builder: (context, AsyncSnapshot snapshot) {
        //         if (!snapshot.hasData)
        //           // ignore: curly_braces_in_flow_control_structures
        //           return const CircularProgressIndicator(
        //             backgroundColor: Colors.orange,
        //           );
        //         return Column(
        //           children: List.generate(
        //             snapshot.data.length,
        //             (index) => Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 decoration: BoxDecoration(
        //                   // ignore: prefer_const_literals_to_create_immutables
        //                   boxShadow: [
        //                     // ignore: prefer_const_constructors
        //                     BoxShadow(
        //                       color: Colors.grey,
        //                       offset: const Offset(
        //                         1.0,
        //                         1.0,
        //                       ),
        //                       blurRadius: 15.0,
        //                       spreadRadius: 2.0,
        //                     ),
        //                   ],
        //                   color: Colors.blue,
        //                   borderRadius: BorderRadius.circular(50),
        //                 ),
        //                 // ignore: prefer_const_constructors
        //                 margin: EdgeInsets.only(left: 30, right: 30, top: 30),
        //                 height: MediaQuery.of(context).size.height / 2,
        //                 width: MediaQuery.of(context).size.width / 1,
        //                 // margin: EdgeInsets.only(left: 20, bottom: 20),
        //                 child: Center(
        //                   child: Text(
        //                     snapshot.data[index]['name'],
        //                     style: TextStyle(
        //                         color: Colors.grey.shade600,
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.w500),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
        // ignore: prefer_const_constructors
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavFav(),
        )
      ],
    ));
  }
}
