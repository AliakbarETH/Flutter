import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/routes.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String myName = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Login $myName",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              child: Text("Hi, I am in the box"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                    onChanged: (value) {
                      myName = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });

                await Future.delayed(Duration(seconds: 1));

                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 100 : 150,
                height: 40,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login here man!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  // borderRadius: BorderRadius.circular(changeButton ? 20 : 8)),
                ),
              ),

              //     ElevatedButton(
              //         onPressed: () {
              //           Navigator.pushNamed(context, MyRoutes.homeRoute);
              //         },
              //         child: Text("login"),
              //         style: TextButton.styleFrom()),
            )
          ],
        ));
  }
}
