
// @dart=2.11

import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:malzamati/pages/teacher_pages/component/body.dart';
import 'package:malzamati/pages/widgets/custom_drawer.dart';
class Classes extends StatefulWidget {
  const Classes({Key key}) : super(key: key);

  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
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
        screenContents: List(),
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

class List extends StatelessWidget {
  const List({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).accentColor,
      //   title: Text("Classes",
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
      body: Body(),
    );
  }
}
