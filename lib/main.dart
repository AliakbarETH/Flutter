import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(primarySwatch: Colors.green),
        initialRoute: "/home",
        routes: {
          '/': (context) => loginPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => loginPage(),
        });
  }
}
