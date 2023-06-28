import 'package:flutter/material.dart';
import '../itemwidgets/elevationbuttonbuilder.dart';

import '../screens/sidedrawer.dart';

class ExchangeScreen extends StatefulWidget {
  static const routeScreen = "./exchange";
  const ExchangeScreen({
    super.key,
  });

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  List<String> buttons = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "00",
    "0",
    "X",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "EXCHANGE",
          ),
        ),
        flexibleSpace: Container(
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
        ),
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
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: const Image(
                      image: AssetImage(
                        "assets/images/exchange.png",
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: const Image(
                      image: AssetImage(
                        "assets/images/exchange.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              child: GridView.builder(
                padding: const EdgeInsets.all(
                  0,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.8,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          gradient: const LinearGradient(
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
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              buttons[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: buttons.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
