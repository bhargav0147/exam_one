import 'package:application/Screen/fashionScreen.dart';
import 'package:application/Screen/homeMobile.dart';
import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  List fashionPic = [
    "https://rukminim1.flixcart.com/image/832/832/kst9gnk0/kurta/z/r/g/xxl-rf-184-petrol-blue-new4u-original-imag6as2xts2q2b5.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/xif0q/kurta/i/d/n/3xl-nsg-358-saabhi-original-imaghrb4t4wudgfp.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/xif0q/kurta/l/a/9/l-nsg-358-saabhi-original-imaghrb4bx4rnuey.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/l2z26q80/kurta/q/2/5/m-fionaaqua-stylum-original-image7fypzzhuezq.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/klmmrgw0/kurta/w/k/f/m-kr-4318-black-lee-moda-original-imagypf2cpvqhxzt.jpeg?q=70"
  ];
  List fashionName=[
    "Women Solid Viscose Rayon Straight Kurta",
    "Women Printed Viscose Rayon Ethnic Dress",
    "Women Printed Viscose Rayon Ethnic Dress",
    "Women Floral Print Viscose Rayon A-line Kurta",
    "Women Printed Viscose Rayon Flared Kurtas"
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
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
                        Product(fashionPic[0],fashionName[0],0),
                        SizedBox(
                          width: 15,
                        ),
                        Product(fashionPic[1],fashionName[1],1),
                        SizedBox(
                          width: 15,
                        ),
                        Product(fashionPic[2],fashionName[2],2),
                        SizedBox(
                          width: 15,
                        ),
                        Product(fashionPic[3],fashionName[3],3),
                        SizedBox(
                          width: 15,
                        ),
                        Product(fashionPic[4],fashionName[4],4),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Fashion(n),));
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
