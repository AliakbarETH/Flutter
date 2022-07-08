import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://media-exp1.licdn.com/dms/image/C4D03AQERC5LYNO1tKA/profile-displayphoto-shrink_200_200/0/1651912172990?e=2147483647&v=beta&t=A29uqryy6NoBPsvY6lj0EAH5cP86Jcv_pmy50RdX6mk";

    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                accountName: Text("Ali Akbar"),
                accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.white,
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
              ),
              iconColor: Colors.white,
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
