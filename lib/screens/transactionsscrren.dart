import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../datamodel/alltransactions.dart';

import './sidedrawer.dart';
import '../itemwidgets/elevationbuttonbuilder.dart';
import '../itemwidgets/textbuttonbuilder.dart';
import '../itemwidgets/transactiontile.dart';

class Transactions extends StatelessWidget {
  static const routeScrren = "./transaction";
  const Transactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const SideDrawer(),
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
              height: MediaQuery.of(
                    context,
                  ).size.height *
                  0.45,
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
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) => const LinearGradient(
                          colors: [
                            Color.fromARGB(
                              255,
                              48,
                              212,
                              253,
                            ),
                            Color.fromARGB(
                              255,
                              1,
                              154,
                              214,
                            ),
                          ],
                        ).createShader(
                          bounds,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.solidUser,
                          size: 45,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 5,
                      ),
                      child: FittedBox(
                        child: Text(
                          "YOUR NAME",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
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
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Text(
                              "BALANCE",
                              style: TextStyle(
                                color: Color(
                                  0xff019AD6,
                                ),
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: FittedBox(
                              child: Text(
                                "\$4,180.20",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(
                                    0xff006093,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: ElevationButtonBuilder(
                              con: context,
                              title: "TRANSFER",
                              handler: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 16,
                  ),
                  child: Text(
                    "LATEST TRANSACTIONS",
                    style: TextStyle(
                      color: Color(
                        0xff019AD6,
                      ),
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(
                        context,
                      ).size.height *
                      0.45,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(
                      0,
                    ),
                    itemCount: allTransactions.length,
                    itemBuilder: (context, index) {
                      return TransactionTile(
                        title: allTransactions[index].title,
                        subtitle: allTransactions[index].subtitle,
                        amount: allTransactions[index].amount,
                        trans_type: allTransactions[index].transType,
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              height: MediaQuery.of(
                    context,
                  ).size.height *
                  0.05,
              alignment: Alignment.centerRight,
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
