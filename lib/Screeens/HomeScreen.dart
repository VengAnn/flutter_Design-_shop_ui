import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/grid_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      const Color.fromARGB(133, 68, 182, 62),
      const Color.fromARGB(133, 78, 46, 194),
      const Color.fromARGB(133, 33, 131, 153),
    ];
    //
    var imagesList = [
      "image/slide1.png",
      "image/slide3.png",
      "image/slide4.png",
    ];
    //
    var iconImagesList = [
      "image/icon1.png",
      "image/icon2.png",
      "image/icon3.png",
      "image/icon4.png",
      "image/icon5.png",
      "image/icon6.png",
      "image/icon7.png",
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1.2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 4,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      child: const Icon(
                        CupertinoIcons.cart,
                        size: 28,
                      ),
                    ),

                    //
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 4,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      child: const Icon(
                        CupertinoIcons.search,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                const Text(
                  "Hello Dear!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Let's Shop Something",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.only(left: 15),
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Clrs[i],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Text(
                                            "30% off \non Winter\nCollection",
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        //
                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: const Center(
                                              child: Text(
                                            "Shop Now",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w700),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Image.asset(
                                  imagesList[i],
                                  width: 120,
                                  height: 180,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Top Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 7; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[400],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(iconImagesList[i]),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                //
                const SizedBox(
                  height: 20,
                ),
                GridItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
