import 'package:flutter/material.dart';

import './sidedrawer.dart';

import '../itemwidgets/textwithbuttonbuilder.dart';

class ScannerScrren extends StatelessWidget {
  static const routeScreen = "./scanner";

  const ScannerScrren({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(
                      255,
                      28,
                      59,
                      112,
                    ),
                    Color.fromARGB(
                      255,
                      0,
                      96,
                      147,
                    ),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: Text(
                      "SCAN THIS QR CODE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.3,
                    child: const Image(
                      image: AssetImage(
                        "assets/images/barcode.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: Column(
                      children: [
                        FittedBox(
                          child: Text(
                            "YOUR NAME",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: FittedBox(
                            child: Text(
                              "your-email@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Try BARCODE",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 80,
                          child: const Image(
                            image: AssetImage(
                              "assets/images/barcode_2.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Can't scan the QR Code?",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        TextWithButtonBuilder(
                          underline: true,
                          handler: () {},
                          title: "Bank Account",
                          text: "Try",
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
