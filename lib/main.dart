// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wealthwave/pages/login_page.dart';
import 'package:wealthwave/pages/signup_page.dart';
import 'package:wealthwave/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardPage(),
        '/signup': (context) => SignupPage(),
        '/dashboard': (context) => DashboardPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
