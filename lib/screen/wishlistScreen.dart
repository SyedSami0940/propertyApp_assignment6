import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:propertyapp/content/color.dart';
import 'package:propertyapp/screen/detailScreen.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  List<String> ViewhouseList = [
    "assets/images/house1.png",
    "assets/images/house2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailScreenView()),
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/mainhouse.jpg',
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Color(Pcolor.frame_clr),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Merchant Navy C.H.S",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Boundary wall area with 24/7 Security ",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            shape: RoundedRectangleBorder(),
                                            backgroundColor: Color(0xff627aa8),
                                            content: Text(
                                              "Added to bookmark",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ));
                                        },
                                        icon: const Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Colors.white)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      8,
                                    ),
                                    child: Icon(
                                      Icons.bedroom_child_sharp,
                                      color: Color(0xffed9100),
                                    ),
                                  ),
                                  Text(
                                    "6 Beds",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.0),
                                    child: Icon(Icons.bathtub,
                                        color: Color(0xffed9100)),
                                  ),
                                  Text(
                                    "5 Baths",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.0),
                                    child: Icon(
                                      Icons.garage,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    "1 Garage",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ]),
              Row(children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailScreenView()),
                            );
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/house2.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Color(Pcolor.frame_clr),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Merchant Navy C.H.S",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Boundary wall area with 24/7 Security ",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            shape: RoundedRectangleBorder(),
                                            backgroundColor: Color(0xff627aa8),
                                            content: Text(
                                              "Added to bookmark",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ));
                                        },
                                        icon: const Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Colors.white)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      8,
                                    ),
                                    child: Icon(
                                      Icons.bedroom_child_sharp,
                                      color: Color(0xffed9100),
                                    ),
                                  ),
                                  Text(
                                    "6 Beds",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.0),
                                    child: Icon(Icons.bathtub,
                                        color: Color(0xffed9100)),
                                  ),
                                  Text(
                                    "5 Baths",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.0),
                                    child: Icon(
                                      Icons.garage,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    "1 Garage",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
