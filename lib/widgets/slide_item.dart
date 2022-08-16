import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideItem extends StatefulWidget {
  SlideItem({Key? key}) : super(key: key);

  @override
  State<SlideItem> createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  int activeIndex = 0;

  final pictures = [
    'assets/bg1.jpg',
    'assets/bg2.jpg',
    'assets/bg3.jpg',
    'assets/bg4.jpg',
  ];

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      CarouselSlider.builder(
        options: CarouselOptions(
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
          autoPlayInterval: const Duration(
            seconds: 5,
          ),
          autoPlay: true,
          height: size.height,
          viewportFraction: 1.2,
        ),
        itemCount: pictures.length,
        itemBuilder: (context, index, realIndex) {
          return buildImage(pictures[index]);
        },
      ),
      Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.black54,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: size.height * 0.45,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: pictures.length,
              effect: SlideEffect(
                dotColor: Colors.blueGrey,
                activeDotColor: Color(0xFF0D76BB),
                radius: 20,
                dotWidth: 15,
                dotHeight: 5,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

Widget buildImage(String pictures) => Container(
    color: Colors.transparent,
    margin: const EdgeInsets.symmetric(horizontal: 12),
    child: Image(
      image: AssetImage(pictures),
      fit: BoxFit.cover,
      colorBlendMode: BlendMode.darken,
      filterQuality: FilterQuality.high,
    ));
