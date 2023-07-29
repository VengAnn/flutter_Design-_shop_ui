import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.green,
      indicatorRadius: 7,
      indicatorBackgroundColor: Colors.white,
      autoPlayInterval: 3000,
      height: 300,
      isLoop: true,
      children: [
        Image.asset("image/p1.png"),
        Image.asset("image/p2.png"),
        Image.asset("image/p1.png"),
        Image.asset("image/p2.png"),
      ],
    );
  }
}
