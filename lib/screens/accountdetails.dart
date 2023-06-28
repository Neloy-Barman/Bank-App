import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/sidedrawer.dart';
import '../itemwidgets/elevationbuttonbuilder.dart';

class AccountDetails extends StatelessWidget {
  static const routeScreen = "./account-details";
  const AccountDetails({
    super.key,
  });

  Widget accountFields(
    String fieldName,
    String fieldText,
    double height,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fieldName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: height,
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  borderSide: const BorderSide(
                    width: 1.5,
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  borderSide: const BorderSide(
                    width: 1.5,
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                filled: true,
                hintText: fieldText,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  height: 0.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Account",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Container(
                  child: const Image(
                    image: AssetImage(
                      "assets/images/bank_card.png",
                    ),
                  ),
                ),
              ),
              accountFields(
                "YOUR NAME",
                "NAME",
                32,
              ),
              accountFields(
                "BANK ACCOUNT",
                "ACCOUNT NO.",
                32,
              ),
              accountFields(
                "EMAIL",
                "YOUR-EMAIL@gmail.com",
                32,
              ),
              accountFields(
                "PASSWORD",
                "PASSWORD",
                32,
              ),
              accountFields(
                "PHONE NUMBER",
                "PHONE NUMBER",
                32,
              ),
              accountFields(
                "YOUR ADDRESS",
                "YOUR ADDRESS",
                60,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                ),
                child: Text(
                  "* You must fill all the informations carefully to keep your transactions secure.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: ElevationButtonBuilder(
                  con: context,
                  title: "SAVE CHANGES",
                  handler: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
