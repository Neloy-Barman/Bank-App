import 'package:bank_app/screens/exchange.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/accountdetails.dart';
import '../screens/transactionsscrren.dart';
import '../screens/scanner.dart';
import '../screens/likcard.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  Widget drawerItem(
    String title,
    VoidCallback handler,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: InkWell(
        onTap: handler,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.blue,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1.5,
              indent: 35,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const Image(
                    image: AssetImage(
                      "assets/images/mainLogo.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.3 / 2 - 50,
                  left: MediaQuery.of(context).size.width * 0.7 / 2 - 60,
                  child: const Text(
                    "Happy Banking !!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            drawerItem(
              "Home",
              () {
                Navigator.of(context).pushReplacementNamed(
                  HomeScreen.routeScreen,
                );
              },
              Icons.home,
            ),
            drawerItem(
              "Account Details",
              () {
                Navigator.of(context).pushReplacementNamed(
                  AccountDetails.routeScreen,
                );
              },
              Icons.details_outlined,
            ),
            drawerItem(
              "Transactions",
              () {
                Navigator.of(context).pushReplacementNamed(
                  Transactions.routeScrren,
                );
              },
              Icons.history,
            ),
            drawerItem(
              "Scanner",
              () {
                Navigator.of(context).pushReplacementNamed(
                  ScannerScrren.routeScreen,
                );
              },
              Icons.qr_code_scanner,
            ),
            drawerItem(
              "Currency Exchange",
              () {
                Navigator.of(context).pushReplacementNamed(
                  ExchangeScreen.routeScreen,
                );
              },
              Icons.currency_exchange_outlined,
            ),
            drawerItem(
              "Your Card",
              () {
                Navigator.of(context).pushReplacementNamed(
                  LinkCard.routeScreen,
                );
              },
              Icons.card_membership,
            )
          ],
        ),
      ),
    );
  }
}
