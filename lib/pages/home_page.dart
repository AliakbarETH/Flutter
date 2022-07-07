import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/loginPage.dart';
import 'package:flutter_practice/pages/routes.dart';
import 'package:flutter_practice/pages/routes.dart';

class HomePage extends StatelessWidget {
  final int a = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),

      


      body: Center(
        child: Container(
          child: Text("Welcome to flutter bhai $a"),
        ),
      ),
      drawer: Drawer(),
      /*routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
      },*/
    );
  }
}
