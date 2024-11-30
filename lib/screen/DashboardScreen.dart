import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:propertyapp/content/color.dart';
import 'package:propertyapp/screen/detailScreen.dart';
import 'package:propertyapp/screen/loginScreen.dart';
import 'package:propertyapp/screen/wishlistScreen.dart';

class Dashboardview extends StatefulWidget {
  const Dashboardview({super.key});

  @override
  State<Dashboardview> createState() => _DashboardviewState();
}

class _DashboardviewState extends State<Dashboardview> {
  var isLogoutLoading = false;
  logOut() async {
    setState(() {
      isLogoutLoading = true;
    });
    await FirebaseAuth.instance.signOut();
    //ye login form open ho rah ahi yaha se
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginScreenView(),
      ),
    );
    setState(() {
      isLogoutLoading = false;
    });
  }

  List<String> ViewhouseList = [
    "assets/images/house1.png",
    "assets/images/house2.png",
    "assets/images/house3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                logOut();
              },
              icon: isLogoutLoading
                  ? CircularProgressIndicator()
                  : Icon(Icons.exit_to_app),
            ),
          ],
          title: Text("Real State"),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Karachi , Pakistan',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  WishListView(), // Replace with your destination screen
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/save_ribon.png',
                          height: 34,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discover Best \nSuitable Property",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 28),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Color(Pcolor.frame_clr)),
                              onPressed: () {},
                              child: const Text(
                                "House",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Color(Pcolor.frame_clr)),
                              onPressed: () {},
                              child: const Text(
                                "Apartment",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 50,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Color(Pcolor.frame_clr)),
                              onPressed: () {},
                              child: const Text(
                                "Flot",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Color(Pcolor.frame_clr)),
                              onPressed: () {},
                              child: const Text(
                                "Shop",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: Row(
                      children: [
                        Text(
                          "Best For You",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height / 2.2,
                        width: MediaQuery.of(context).size.width,
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
                                    padding:
                                        EdgeInsets.only(left: 8.0, top: 8.0),
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
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: IconButton(
                                            color: Colors.white,
                                            onPressed: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                shape: RoundedRectangleBorder(),
                                                backgroundColor:
                                                    Color(0xff627aa8),
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
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Nearby your location.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: ListTile(
                            leading: Image.asset(ViewhouseList[index]),
                            title: const Text("Merchant Navy House"),
                            subtitle: const Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Boundary wall area"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                        0,
                                      ),
                                      child: Icon(
                                        Icons.bedroom_child_sharp,
                                        color: Color(0xffed9100),
                                      ),
                                    ),
                                    Text(
                                      "6 Beds",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Icon(Icons.bathtub,
                                          color: Color(0xffed9100)),
                                    ),
                                    Text(
                                      "5 Baths",
                                      style: TextStyle(color: Colors.grey),
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
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
