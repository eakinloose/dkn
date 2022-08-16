import 'package:denukan_business_solutions/widgets/miniAuthContainer.dart';
import 'package:denukan_business_solutions/widgets/slide_item.dart';
import 'package:flutter/material.dart';

class IntroSrcreen extends StatefulWidget {
  const IntroSrcreen({Key? key}) : super(key: key);

  @override
  State<IntroSrcreen> createState() => _IntroSrcreenState();
}

class _IntroSrcreenState extends State<IntroSrcreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SlideItem(),
        Center(
            child: Image(
          image: AssetImage("assets/5.png"),
          height: size.height * 0.25,
        )),
        Align(
          alignment: Alignment.bottomCenter,
          child: MiniAuth(),
        ),
      ],
    );
  }
}
