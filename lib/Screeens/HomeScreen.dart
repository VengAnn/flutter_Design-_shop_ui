import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
