import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  var pNames = [
    "Apple Watch -M2",
    "Ear Headphone",
    "White Tshirt",
    "Nike Shoe"
  ];
  //
  var pSizes = ["36", "M", "s", "40"];
  CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //
              Column(
                children: [
                  for (int i = 0; i < 4; i++)
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[400],
                            ),
                            child: Image.asset("image/${pNames[i]}.png"),
                          ),
                        ),
                        //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(pNames[i]),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                const Text("Size:"),
                                Text(
                                  pSizes[i],
                                ),
                              ],
                            )
                          ],
                        ),

                        //
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Column(
                            children: [
                              Text("\$50.00"),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(CupertinoIcons.minus),
                                  Text("01"),
                                  Icon(CupertinoIcons.plus),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              //
              SizedBox(
                height: 30,
              ),
              //
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "200\$",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              InkWell(
                onTap: () {},
                child: Expanded(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                    ),
                    child: const Center(child: Text("Order Now!")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
