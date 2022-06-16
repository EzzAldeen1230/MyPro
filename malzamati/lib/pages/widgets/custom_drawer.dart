import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malzamati/pages/athontcation/login_page.dart';
import 'package:malzamati/pages/profile_page/profile_page.dart';
import 'package:malzamati/pages/teacher_pages/myhome_page.dart';

import '../settings.dart';

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
        ),
      ),
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 30),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/img/logo.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Name is : EzzAldeen ",
                    style: TextStyle(color: Colors.white70),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              leading: Icon(Icons.person),
              title: Text(
                "Your Profile",
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              leading: Icon(Icons.home),
              title: Text(
                "Home",
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Divider(
              height: 3,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: ListTile(
              onTap: () {
                debugPrint("Tapped Notifications");
              },
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Divider(
              height: 3,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: ListTile(
              onTap: () {
                debugPrint("Tapped Payments");
              },
              leading: Icon(Icons.help),
              title: Text("Help"),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(30))),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )),
            margin: EdgeInsets.only(top: 130, right: 3, left: 6),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
