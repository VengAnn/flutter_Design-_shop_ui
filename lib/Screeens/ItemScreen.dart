import 'package:flutter/material.dart';

import '../Widgets/ProductImageSlider.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.blue[100],
              ),
              child: Stack(
                children: [
                  Center(
                    child: ProductImagesSlider(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
