import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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

    List<String> imageUrls = [
      // 'https://s3.amazonaws.com/nikeinc/assets/84925/Sp19_BB_Nike_Adapt_20181218_NIKE0538_Detail5_rectangle_1600.jpg?1547068102',
      'https://cdn.luxe.digital/media/2019/09/12085344/smart-casual-dress-code-men-summer-style-luxe-digital.jpg',
      'https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=60,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMDN00486Dark%20Wash_1nw.Jpg',
      'https://the-collective.imgix.net/img/app/product/5/584126-5278979.jpg?w=1600&auto=format',
      'https://mywholesalecart.com/wp-content/uploads/2020/09/Striped-Men-Yellow-Track-Pants-3.jpg',
      'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/productimage/2020/1/17/d71045b2-4300-4395-b110-f652fa00e9e51579211471795-1.jpg',
      'https://4.imimg.com/data4/XP/SG/MY-32285401/men-plain-casual-shirt-500x500.jpg',
      'https://developer.apple.com/news/images/og/programs-og.jpg',
      'https://www.fineprintart.com/images/the-history-behind-the-samsung-logo/the-history-behind-the-samsung-logo-1.jpg',
      'https://www.seekpng.com/png/detail/4-41087_dell-logo-png-dell-logo-transparent-background.png',
      'https://logodix.com/logo/862191.png',
      'https://3.imimg.com/data3/UB/NF/MY-646899/men-s-wear-500x500.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/519HHMNx0sL._UX569_.jpg',
      'https://s3.amazonaws.com/nikeinc/assets/84925/Sp19_BB_Nike_Adapt_20181218_NIKE0538_Detail5_rectangle_1600.jpg?1547068102',
      'https://i.pinimg.com/originals/91/e5/57/91e557b23c1489087fbf1a99163ce945.jpg',
      'https://images.herzindagi.info/image/2020/Apr/Electronics.jpg',
      'https://www.cnet.com/a/img/SEtkPeF-QMfgzOf_BBXgPu9VUzA=/1200x675/2020/08/18/b7168aea-9f7e-47bb-9f31-4cb8ad92fbc7/lg-note-20-ultra-5g-iphone-11-se-google-pixel-4a-lg-velvet-6133.jpg',
      'https://www.cnet.com/a/img/FxXj67Xfg3vF59H0oaKgXr_-e_Q=/2017/07/18/9409e1eb-23e3-4fde-a543-f11e7179cf20/laptops-dan-01.jpg'
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // ignore: prefer_const_constructors
                Container(
                  margin: EdgeInsets.only(left: 40, top: 20),
                  // ignore: prefer_const_constructors
                  child: Align(
                      alignment: Alignment.topLeft,
                      // ignore: prefer_const_constructors
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Icon(Icons.arrow_back),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            width: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            "Profile",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40, top: 30),
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(35),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            // ignore: prefer_const_constructors
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(
                                1.0,
                                1.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.white,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      // ignore: prefer_const_constructors
                      child: Image(
                        // ignore: prefer_const_constructors
                        image: AssetImage(
                          'assets/srikanth.png',
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 20,
                    ),
                    // ignore: prefer_const_constructors
                    Container(
                      // ignore: prefer_const_constructors
                      margin: EdgeInsets.only(top: 10),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Srikanth\n\ntiwarisrikanth@gmail.com",
                      ),
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                // ignore: prefer_const_constructors
                // ignore: avoid_unnecessary_containers
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(left: 20, top: 10),
                  // ignore: prefer_const_constructors
                  child: Align(
                    alignment: Alignment.topLeft,
                    // ignore: prefer_const_constructors
                    child: Text(
                      "My Previous Orders",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                // Row(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         color: Colors.black,
                //       ),
                //       margin: EdgeInsets.only(left: 20, top: 20),
                //       height: MediaQuery.of(context).size.height / 3.5,
                //       width: MediaQuery.of(context).size.width / 2.5,
                //     )
                //   ],
                // )
                FutureBuilder(
                  future: getData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData)
                      // ignore: curly_braces_in_flow_control_structures
                      return const CircularProgressIndicator(
                        backgroundColor: Colors.orange,
                      );
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          snapshot.data.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  // ignore: prefer_const_constructors
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: const Offset(
                                      1.0,
                                      1.0,
                                    ),
                                    blurRadius: 15.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                // color: Colors.blue.shade800,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      imageUrls[index],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                              // ignore: prefer_const_constructors
                              margin: EdgeInsets.only(
                                  left: 30, top: 30, bottom: 20),
                              height: MediaQuery.of(context).size.height / 3.5,
                              width: MediaQuery.of(context).size.width / 2.5,
                              // margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black38,
                                  child: Text(
                                    snapshot.data[index]['name'],
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      // backgroundColor: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // Container(
                //   // ignore: prefer_const_constructors
                //   margin: EdgeInsets.only(top: 5),
                //   // ignore: prefer_const_constructors
                //   child: Divider(
                //     height: 5,
                //     thickness: 2,
                //     indent: 20,
                //     endIndent: 20,
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
