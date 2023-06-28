import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../datamodel/allicons.dart';
import '../itemwidgets/cicledbutton.dart';
import '../itemwidgets/textbuttonbuilder.dart';

class HomeScreen extends StatelessWidget {
  static const routeScreen = "./home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            "PAYMENT",
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              height: MediaQuery.of(context).size.height * 0.3,
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
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => const LinearGradient(
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
                          ).createShader(
                            bounds,
                          ),
                          child: const Icon(
                            FontAwesomeIcons.user,
                            size: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(
                            child: Text(
                              "\$4,180.20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // color: Colors.amber,
              // alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * 0.6,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: AllIcons.length,
                itemBuilder: (context, index) {
                  return CircledButton(
                    icon: AllIcons[index].icon,
                    color1: AllIcons[index].color1,
                    color2: AllIcons[index].color2,
                    title: AllIcons[index].title,
                  );
                },
                padding: const EdgeInsets.all(
                  20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              alignment: Alignment.bottomRight,
              child: TextButtonBuilder(
                title: "more >>",
                handler: () {},
                underline: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
