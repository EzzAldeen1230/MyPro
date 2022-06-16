// @dart=2.11
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:malzamati/pages/profile_page/edit_profile.dart';

import 'package:malzamati/pages/widgets/custom_drawer.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';


class Profile extends StatefulWidget {

  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
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
        screenContents: ProfilePage(),
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

class ProfilePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage>{

  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).accentColor,
      //   title: Text("Profile Page",
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      //   elevation: 0.5,
      //   iconTheme: IconThemeData(color: Colors.white),
      //
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.only( top: 16, right: 16,),
      //       child: Stack(
      //         children: <Widget>[
      //           Icon(Icons.notifications),
      //           Positioned(
      //             right: 0,
      //             child: Container(
      //               padding: EdgeInsets.all(1),
      //               decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
      //               constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
      //               child: Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
      //             ),
      //           )
      //         ],
      //       ),
      //     )
      //   ],
      // ),

      body: SingleChildScrollView(

        child: Stack(
          children: [


            Container(height: 200, child: HeaderWidget(200,false,Icons.house_rounded),),
            Container(

              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 90, 25, 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Stack(         children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 10,

                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Theme.of(context).accentColor,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit_outlined),
                            color: Colors.white, onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                          },
                          ),
                        )),
                  ],),

                  SizedBox(height: 20,),
                  Text('Dr. EzzAldeen Kadri', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text('Former President', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Location"),
                                          subtitle: Text("USA"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text("donaldtrump@gmail.com"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("774 - 563 - 156"),
                                        ),

                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}