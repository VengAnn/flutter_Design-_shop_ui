import 'package:flutter/material.dart';
import '../Screeens/ItemScreen.dart';

// ignore: must_be_immutable
class GridItems extends StatelessWidget {
  //productName =[Name,Discount Price,Real Price]
  var proNames = [
    ["Apple Watch -M2", "150\$", "300\$"],
    ["Ear Headphone", "40\$", "60\$"],
    ["White Tshirt", "15\$", "30\$"],
    ["Nike Shoe", "25\$", "40\$"],
  ];

  GridItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: proNames.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return Container(
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
                    padding: const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ItemScreen();
                        }));
                      },
                      child: Image.asset(
                        "image/${proNames[index][0]}.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  //
                  const SizedBox(
                    height: 15,
                  ),
                  //one more Row in column
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Name products
                            Text(proNames[index][0]),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                //Price products
                                Text(
                                  proNames[index][1],
                                  style: const TextStyle(color: Colors.red),
                                ),
                                //
                                const SizedBox(
                                  width: 10,
                                ),
                                //
                                Text(
                                  proNames[index][2],
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
