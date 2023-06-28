import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/sidedrawer.dart';
import '../itemwidgets/dropdownbutton.dart';
import '../itemwidgets/elevationbuttonbuilder.dart';

class LinkCard extends StatefulWidget {
  static const routeScreen = "./link-card";
  const LinkCard({
    super.key,
  });

  @override
  State<LinkCard> createState() => _LinkCardState();
}

class _LinkCardState extends State<LinkCard> {
  final days = List<String>.generate(
    31,
    (int index) => "${index + 1}",
    growable: true,
  );

  final months = <String>[
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DEC",
  ];
  final years = List<String>.generate(
    11,
    (int index) => "${2023 + index}",
    growable: true,
  );

  final phoneCodes = <String>[
    "+880",
    "+91",
    "+1",
    "+94",
    "+62",
  ];

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
    String day = days.first;
    String month = months.first;
    String year = years.first;
    String code = phoneCodes.first;
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "ADD CARD",
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
                  vertical: 30,
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
                "CARD NUMBER",
                "INSERT YOUR CARD NUMBER",
                32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 7,
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "EXPIRATION DATE",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDropdownButton(
                            items: days,
                            existingValue: day,
                            wid: MediaQuery.of(context).size.width * 0.22,
                          ),
                          CustomDropdownButton(
                            items: months,
                            existingValue: month,
                            wid: MediaQuery.of(context).size.width * 0.3,
                          ),
                          CustomDropdownButton(
                            items: years,
                            existingValue: year,
                            wid: MediaQuery.of(context).size.width * 0.22,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              accountFields(
                "PASSWORD",
                "PASSWORD",
                32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 7,
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "PHONE NUMBER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomDropdownButton(
                              items: phoneCodes,
                              existingValue: code,
                              wid: MediaQuery.of(context).size.width * 0.22,
                            ),
                            SizedBox(
                              height: 32,
                              width: MediaQuery.of(context).size.width * 0.52,
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
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                  title: "LINK CARD",
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
