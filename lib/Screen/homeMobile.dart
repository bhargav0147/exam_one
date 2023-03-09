import 'package:application/Screen/fashionScreen.dart';
import 'package:application/Screen/homeScreen.dart';
import 'package:application/Screen/mobile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _DashState();
}

class _DashState extends State<Home> {
  List mobilePic = [
    "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/m/l/o/-original-imagmg6gzjf7gggt.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/y/l/p/-original-imaghxemc3wtcuhb.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/x/j/s/iphone-11-128-d-mwm02hn-a-apple-0-original-imafkg242ugz8hwc.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/416/416/kjx6tu80/mobile/a/p/6/oppo-reno5-pro-5g-cph2201-original-imafze4br6espea4.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/416/416/l3929ow0/mobile/v/n/s/-original-imageewzeguggzvc.jpeg?q=70"
  ];
  List mobileName=[
    "SAMSUNG Galaxy S23 Ultra 5G (Phantom Black, 256 GB)",
    "APPLE iPhone 14 Pro (Space Black, 128 GB)",
    "APPLE iPhone 11 (Black, 64 GB)",
    "OPPO Reno5 Pro 5G (Astral Blue, 128 GB)  (8 GB RAM)",
    "vivo X80 Pro (Cosmic Black, 256 GB)  (12 GB RAM)"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Explore Product",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.black26,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Apple Product",
                              style: TextStyle(
                                  color: Colors.black26,
                                  letterSpacing: 2,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 40,
                          color: Colors.indigo,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      InkWell(onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Dash(),));
                        });
                      },
                        child: Text(
                          "Fashion",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                        });
                      },
                        child: Text(
                          "Electronics",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Product(mobilePic[0],mobileName[0],0),
                        SizedBox(
                          width: 15,
                        ),
                        Product(mobilePic[1],mobileName[1],1),
                        SizedBox(
                          width: 15,
                        ),
                        Product(mobilePic[2],mobileName[2],2),
                        SizedBox(
                          width: 15,
                        ),
                        Product(mobilePic[3],mobileName[3],3),
                        SizedBox(
                          width: 15,
                        ),
                        Product(mobilePic[4],mobileName[4],4),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 100,
                      width: 415,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              size: 50,
                              color: Colors.indigo,
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.equalizer,
                              size: 50,
                              color: Colors.indigo,
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.shopping_bag,
                              size: 50,
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Product(String route,String name,int n) {
    return Container(
      height: 500,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.indigo,
                  size: 30,
                ),
                Spacer(),
                Icon(
                  Icons.shopping_bag,
                  color: Colors.indigo,
                  size: 30,
                ),
              ],
            ),
            // SizedBox(height: 20),
            Image.network(
              route,
              height: 275,width: 200,
            ),
            // SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("$name"
                ,style: TextStyle(
                    color: Colors.indigo,letterSpacing: 1,
                    fontSize: 20
                ),),
            ),
            // SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "⭐⭐⭐⭐⭐",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                    letterSpacing: 1
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mobile(n),));
              },
                child: Text(
                  "See the detailes >",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.indigo,
                      letterSpacing: 1
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}