import 'package:denukan_business_solutions/constants.dart';
import 'package:denukan_business_solutions/widgets/loginForm.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.black,
        image: const DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/5.png"),
                    height: size.height * 0.25,
                  ),
                  space,
                  Text(
                    'WELCOME',
                    style: TextStyle(
                      color: kColorWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 7.0,
                    ),
                  ),
                ],
              ),
            ),
            LoginForm(),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    "DON'T HAVE AN ACCOUNT?",
                    style: TextStyle(
                      color: kColorWhite,
                      fontSize: 16,
                      letterSpacing: 5.0,
                    ),
                  ),
                  space,
                  ElevatedButton(
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
                    child: const Text('Sign Up'),
                  ),
                  space,
                  Text(
                    "FREEZE ACCOUNT",
                    style: TextStyle(
                      color: kColorWhite,
                      fontSize: 15,
                      letterSpacing: 5.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
