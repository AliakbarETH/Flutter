import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/loginPage.dart';
import 'package:flutter_practice/pages/routes.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => loginPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => loginPage(),
        });
  }
}
