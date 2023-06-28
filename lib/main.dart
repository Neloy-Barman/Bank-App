import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/home.dart';
import 'screens/exchange.dart';
import 'screens/scanner.dart';
import 'screens/accountdetails.dart';
import 'screens/likcard.dart';
import 'screens/transactionsscrren.dart';

void main() {
  runApp(
    const BankApp(),
  );
}

class BankApp extends StatelessWidget {
  const BankApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ExchangeScreen(),
      routes: {
        LogInScreen.routeScreen: (_) => LogInScreen(),
        SignUpScreen.routeScreen: (_) => SignUpScreen(),
        HomeScreen.routeScreen: (_) => const HomeScreen(),
        ExchangeScreen.routeScreen: (_) => const ExchangeScreen(),
        Transactions.routeScrren: (_) => const Transactions(),
        ScannerScrren.routeScreen: (_) => const ScannerScrren(),
        AccountDetails.routeScreen: (_) => const AccountDetails(),
        LinkCard.routeScreen: (_) => const LinkCard(),
      },
    );
  }
}
