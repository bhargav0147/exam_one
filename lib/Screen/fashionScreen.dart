import 'package:flutter/material.dart';

class Fashion extends StatefulWidget {
  int no;
 Fashion(this.no);
  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  List fashionPic = [
    "https://rukminim1.flixcart.com/image/832/832/kst9gnk0/kurta/z/r/g/xxl-rf-184-petrol-blue-new4u-original-imag6as2xts2q2b5.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/xif0q/kurta/i/d/n/3xl-nsg-358-saabhi-original-imaghrb4t4wudgfp.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/xif0q/kurta/l/a/9/l-nsg-358-saabhi-original-imaghrb4bx4rnuey.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/l2z26q80/kurta/q/2/5/m-fionaaqua-stylum-original-image7fypzzhuezq.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/832/832/klmmrgw0/kurta/w/k/f/m-kr-4318-black-lee-moda-original-imagypf2cpvqhxzt.jpeg?q=70"
  ];
  List fashionName = [
    "Women Solid Viscose Rayon Straight Kurta",
    "Women Printed Viscose Rayon Ethnic Dress",
    "Women Printed Viscose Rayon Ethnic Dress",
    "Women Floral Print Viscose Rayon A-line Kurta",
    "Women Printed Viscose Rayon Flared Kurtas"
  ];
  List rate=[
    "₹599.00",
    "₹699.00",
    "₹799.00",
    "₹899.00",
    "₹999.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black26),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 40,
                          ),
                        ),
                      )),
                  Image.network(
                    fashionPic[widget.no],
                    height: 300,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 490,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.indigo,
                                  size: 40,
                                )),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "${fashionName[widget.no]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    fontSize: 30,
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Quantity",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove_circle_outline,
                                      size: 50,
                                      color: Colors.indigo,
                                    ),
                                    Text("01",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1

                                    ),),
                                    Icon(
                                      Icons.add_circle_rounded,
                                      size: 50,
                                      color: Colors.indigo,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${rate[widget.no]}",
                                  style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                  ),
                                    ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Add to cart",
                                      style: TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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
}
