import 'package:flutter/material.dart';

import '../itemwidgets/textfieldbuilder.dart';
import '../itemwidgets/elevationbuttonbuilder.dart';
import '../itemwidgets/textwithbuttonbuilder.dart';
import '../itemwidgets/borderdelevationbuilder.dart';

class SignUpScreen extends StatefulWidget {
  static const routeScreen = "./sign-up";

  SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool check = false;
  var name = TextEditingController();

  var accountNo = TextEditingController();

  var email = TextEditingController();

  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage(
                      "assets/images/signUpLogo.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.035,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: const Text(
                    "Connect to your bank account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.5,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.045,
                        right: MediaQuery.of(context).size.height * 0.045,
                        top: MediaQuery.of(context).size.height * 0.035,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            TextFieldBuilder(
                              hinttext: "Your Name",
                              controller: name,
                              position: false,
                            ),
                            TextFieldBuilder(
                              hinttext: "Bank Account",
                              controller: accountNo,
                              position: false,
                            ),
                            TextFieldBuilder(
                              hinttext: "Email",
                              controller: email,
                              position: false,
                            ),
                            TextFieldBuilder(
                              hinttext: "Password",
                              controller: password,
                              position: false,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(
                                8.0,
                              ),
                              child: Text(
                                "Use 6 characters with a mix of letters, numbers & symbols",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(
                                    0xff00718C,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.045,
                vertical: MediaQuery.of(context).size.height * 0.015,
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        value: check,
                        onChanged: (value) {
                          setState(() {
                            check = !check;
                          });
                        },
                      ),
                    ),
                    const FittedBox(
                      child: Text(
                        "By Signing up, you agree to\nBank's Term of Use & Privacy Policy.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(
                            0xff363A40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevationButtonBuilder(
                    title: "SIGN UP",
                    handler: () {},
                    con: context,
                  ),
                  const Text(
                    "or",
                  ),
                  BorderedElevationBuilder(
                    title: "Cancel",
                    handler: () {},
                    con: context,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.05,
              ),
              child: TextWithButtonBuilder(
                text: "Already signed up?",
                title: "Log in",
                handler: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
