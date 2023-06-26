import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/signup.dart';

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
      home: SignUpScreen(),
      routes: {
        LogInScreen.routeScreen: (_) => LogInScreen(),
        SignUpScreen.routeScreen: (_) => SignUpScreen(),
      },
    );
  }
}
