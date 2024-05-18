import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter App')),
      body: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: MediaQuery.of(context).orientation == Orientation.landscape
              ? 0.5
              : maxWidth < width
                  ? 0.8
                  : 0.9,
          aspectRatio: MediaQuery.of(context).orientation == Orientation.landscape
              ? getWidth(width) / getHeight(width) / 0.5
              : maxWidth < width
                  ? getWidth(width) / getHeight(width) / 0.8
                  : getWidth(width) / getHeight(width) / 0.90,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ),
        items: List.generate(
          10,
          (index) => SliderItem(),
        ),
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = 8 * 70;
    double maxHeight = 5 * 70;
    final double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        color: Colors.red,
      ),
    );
  }
}

double maxWidth = 8 * 70;
double maxHeight = 5 * 70;

num getWidth(screenWidth) {
  double value = min(screenWidth, maxWidth);
  return value;
}

double getHeight(screenWidth) {
  double value = min((screenWidth) / (8 / 5), maxHeight);
  return value;
}
