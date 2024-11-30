import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:propertyapp/content/color.dart';

class DetailScreenView extends StatefulWidget {
  const DetailScreenView({super.key});

  @override
  State<DetailScreenView> createState() => _DetailScreenViewState();
}

class _DetailScreenViewState extends State<DetailScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail - Merchant Navy C.H.S"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/mainhouse.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Row(
                      children: [
                        Text(
                          "Merchant Navy C.H.S",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Boundary wall area with 24/7 Security ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
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
                                      color: Colors.white, fontSize: 20),
                                ),
                              ));
                            },
                            icon: const Icon(
                              Icons.bookmark_border_outlined,
                              color: Colors.black,
                              size: 30,
                            )),
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
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.bathtub, color: Color(0xffed9100)),
                      ),
                      Text(
                        "5 Baths",
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.garage,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        "1 Garage",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                          height: 55,
                          width: 55,
                          child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/mypic.png"))),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Syed Samiullah",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Owner of The House.",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(Pcolor.frame_clr)),
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Call",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0, left: 20),
              child: Row(
                children: [
                  Text(
                    "Is an ideal community, complemented with exclusive &\n essential facilities enhancing privacy, promoting aesthetics,\n ensuring security, and absorbing environmental and \nrejuvenating recreation making your dream a reality. ",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Text(
                    "Gallery",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset("assets/images/houseinside1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset("assets/images/houseinside3.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset("assets/images/houseinside2.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset("assets/images/houseinside4.png"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox(
          height: 80,
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Rs 7,500,0000.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(Pcolor.frame_clr)),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
