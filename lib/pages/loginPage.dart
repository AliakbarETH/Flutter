import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/routes.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String myName = "";
  bool changeButton = false;
  final _key = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_key.currentState!.validate()) {
      setState(() {
        changeButton = false;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    } else {
      print("Sorry you are invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Form(
        key: _key,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " User name cannot be empty";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can not be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }

                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.red,
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
              child: InkWell(
                onTap: () => moveToHome(context),
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
                ),

                //     ElevatedButton(
                //         onPressed: () {
                //           Navigator.pushNamed(context, MyRoutes.homeRoute);
                //         },
                //         child: Text("login"),
                //         style: TextButton.styleFrom()),
              ),
            )
          ],
        ),
      )),
    );
  }
}
