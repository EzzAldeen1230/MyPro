// @dart=2.11
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:malzamati/pages/widgets/custom_drawer.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';



class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: FoldableSidebarBuilder(
        drawerBackgroundColor:Theme.of(context).accentColor,
        drawer: CustomDrawer(closeDrawer: (){
          setState(() {
            drawerStatus = FSBStatus.FSB_CLOSE;
          });
        },),
        screenContents: SettingsPage(),
        status: drawerStatus,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            setState(() {
              drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
            });
          }),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(height: 200, child: HeaderWidget(200,true,Icons.settings),),
          Container(
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            child: ListView(
              children: [

                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Account",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                buildAccountOptionRow(context, "Change password"),
                buildAccountOptionRow(context, "Content settings"),
                buildAccountOptionRow(context, "Social"),
                buildAccountOptionRow(context, "Language"),
                buildAccountOptionRow(context, "Privacy and security"),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.volume_up_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                buildNotificationOptionRow("New for you", true

                ),
                buildNotificationOptionRow("Account activity", true),
                buildNotificationOptionRow("Opportunity", false),
                SizedBox(
                  height: 50,
                ),
                Center(

                  child: OutlineButton(
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {

                    },
                    child: Text("SIGN OUT",
                        style: TextStyle(

                            fontSize: 16, letterSpacing: 2.2, color: Theme.of(context).primaryColor)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
