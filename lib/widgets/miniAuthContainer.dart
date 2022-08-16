import 'package:flutter/material.dart';
import 'package:denukan_business_solutions/constants.dart';

class MiniAuth extends StatelessWidget {
  const MiniAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.20,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF0D76BB),
                    ),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 17))),
                child: const Text('Log In'),
              ),
            ),
            space,
            Container(
              height: 2,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            space,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: kColorWhite,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Open Account",
                  style: TextStyle(
                    color: kColorWhite,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Help",
                  style: TextStyle(
                    color: kColorWhite,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
