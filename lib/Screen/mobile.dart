import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  int no;
  Mobile(this.no);
  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
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
  List rate=[
    "₹1,20,000.00",
    "₹1,22,000.00",
    "₹49,000.00",
    "₹40,000.00",
    "₹80,000.00",
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
                    mobilePic[widget.no],
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
                                "${mobileName[widget.no]}",
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