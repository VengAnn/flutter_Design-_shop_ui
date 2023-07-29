import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItems extends StatelessWidget {
  var proNames = [
    ["Apple Watch -M2", "150\$"],
    ["Ear Headphone", "40\$"],
    ["White Tshirt", "15\$"],
    ["Nike Shoe", "25\$"],
  ];

  GridItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: proNames.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.3),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 4,
                      color: Colors.black12,
                    )
                  ],
                ),
                //
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Text
                          Text("30% off"),
                          //Icons heart
                          Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        "image/${proNames[index][0]}.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    //one more column in column
                    Column(
                      children: [
                        Text(proNames[index][0]),
                        Text(proNames[index][1]),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
