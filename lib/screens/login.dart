import 'package:flutter/material.dart';

import '../itemwidgets/textfieldbuilder.dart';
import '../itemwidgets/elevationbuttonbuilder.dart';
import '../itemwidgets/textbuttonbuilder.dart';
import '../itemwidgets/textwithbuttonbuilder.dart';

class LogInScreen extends StatelessWidget {
  static const routeScreen = "./log-in";

  var email = TextEditingController();
  var password = TextEditingController();

  LogInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: const Image(
                      image: AssetImage(
                        "assets/images/mainLogo.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 3.5,
                    top: MediaQuery.of(context).size.height * 0.5 / 4.2,
                    child: const Text(
                      "WELCOME!",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.045,
                        right: MediaQuery.of(context).size.height * 0.045,
                        top: MediaQuery.of(context).size.height * 0.05,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            TextFieldBuilder(
                              hinttext: "Username or Email",
                              controller: email,
                              position: true,
                            ),
                            TextFieldBuilder(
                              hinttext: "Password",
                              controller: password,
                              position: true,
                            ),
                            ElevationButtonBuilder(
                              con: context,
                              title: "LOG IN",
                              handler: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButtonBuilder(
                          title: "Forgot Password?",
                          handler: () {},
                          underline: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextWithButtonBuilder(
                          text: "New to Bank Apps?",
                          title: "Sign Up",
                          handler: () {},
                          underline: true,
                        ),
                      ],
                    ),
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
