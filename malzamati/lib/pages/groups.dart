

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:malzamati/pages/widgets/custom_drawer.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  FSBStatus drawerStatus;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Theme.of(context).accentColor,
        drawer: CustomDrawer(closeDrawer: (){
          setState(() {
            drawerStatus = FSBStatus.FSB_CLOSE;
          });
        },),
        screenContents: Groups(),
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



class Groups extends StatefulWidget {
  const Groups({Key key}) : super(key: key);

  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(

      body: Column(

        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),

              ),
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
            child: Stack(
              children: [
                Positioned(
                    top:88,
                    left: 0,


                    child: Container(
                  height: 90,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white
                            ,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50)
                        )
                      ),

                )),
                Positioned(
                  top: 110,
                    left: 20,

                    child: Text("Your Class",style: TextStyle(fontSize: 40,color: Theme.of(context).accentColor,),),

                )
              ],
            ),
          ),

Expanded(child: ListView(
  children: [
    Container(
      margin: const EdgeInsets.only(bottom: 10,top: 20),
      height: 159,
      padding:
      const EdgeInsets.only(left: 20,right: 20,bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-10,10),
              blurRadius: 20,
              spreadRadius: 4,
            )
          ],

        ),

        child: Column(
          children: [
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(
                    top: 20,
                      left: 20,
                      bottom: 10,
                      right: 10

                  ),
                            elevation: 7.0,
                       shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                            child:
                              Image.asset(
                                "assets/img/logo.png",
                                width: 70,
                                height: 70,
                              ),
                ),
               Container(
                 margin: EdgeInsets.only(
                   top: 10
                       ,left: 20
                 ),
                 child: Column(

                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Level 1",style: TextStyle(color: Colors.white ),),

                            Text("Name of subject : java ",style: TextStyle(color: Colors.white ),),

                            Text("By: Dr/Ezzaldeen kadri",style: TextStyle(color: Colors.white ),),

                   ],
                 ),
               )

              ],
            ),

            Container(
              width: 250,
              height: 30,


              child: RaisedButton(

                color: Theme.of(context).primaryColor.withBlue(5),
                            child: Text("View The Class",style: TextStyle(color: Colors.white.withOpacity(0.3)),),
                            onPressed: (){

                            },
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                                ),

                            ),


                          ),
            )
          ],
        ),
      )
      ,
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 10,top: 20),
      height: 159,
      padding:
      const EdgeInsets.only(left: 20,right: 20,bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff).withOpacity(0.3),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-10,10),
              blurRadius: 20,
              spreadRadius: 4,
            )
          ],

        ),

        child: Column(
          children: [
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(
                      top: 20,
                      left: 20
                      ,bottom: 10,
                      right: 10

                  ),
                  elevation: 20.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                  Image.asset(
                    "assets/img/logo.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10
                      ,left: 20
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Level 1",style: TextStyle(color: Colors.white ),),

                      Text("Name of subject : java ",style: TextStyle(color: Colors.white ),),

                      Text("By: Dr/Ezzaldeen kadri",style: TextStyle(color: Colors.white ),),

                    ],
                  ),
                )

              ],
            ),

            Container(
              width: 250,
              height: 30,

              child: RaisedButton(

                child: Text("View The Class",),
                onPressed: (){},
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)
                  ),

                ),


              ),
            )
          ],
        ),
      )
      ,
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 10,top: 20),
      height: 159,
      padding:
      const EdgeInsets.only(left: 20,right: 20,bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff).withOpacity(0.3),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-10,10),
              blurRadius: 20,
              spreadRadius: 4,
            )
          ],

        ),

        child: Column(
          children: [
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(
                      top: 20,
                      left: 20
                      ,bottom: 10,
                      right: 10

                  ),
                  elevation: 20.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                  Image.asset(
                    "assets/img/logo.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10
                      ,left: 20
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Level 1",style: TextStyle(color: Colors.white ),),

                      Text("Name of subject : java ",style: TextStyle(color: Colors.white ),),

                      Text("By: Dr/Ezzaldeen kadri",style: TextStyle(color: Colors.white ),),

                    ],
                  ),
                )

              ],
            ),

            Container(
              width: 250,
              height: 30,

              child: RaisedButton(

                child: Text("View The Class",),
                onPressed: (){},
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)
                  ),

                ),


              ),
            )
          ],
        ),
      )
      ,
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 10,top: 20),
      height: 159,
      padding:
      const EdgeInsets.only(left: 20,right: 20,bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff).withOpacity(0.3),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-10,10),
              blurRadius: 20,
              spreadRadius: 4,
            )
          ],

        ),

        child: Column(
          children: [
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(
                      top: 20,
                      left: 20
                      ,bottom: 10,
                      right: 10

                  ),
                  elevation: 20.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:
                  Image.asset(
                    "assets/img/logo.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10
                      ,left: 20
                  ),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Level 1",style: TextStyle(color: Colors.white ),),

                      Text("Name of subject : java ",style: TextStyle(color: Colors.white ),),

                      Text("By: Dr/Ezzaldeen kadri",style: TextStyle(color: Colors.white ),),

                    ],
                  ),
                )

              ],
            ),

            Container(
              width: 250,
              height: 30,

              child: RaisedButton(

                child: Text("View The Class",),
                onPressed: (){},
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)
                  ),

                ),


              ),
            )
          ],
        ),
      )
      ,
    ),



  ],
))






//          Column(
//             children: [
//               Container(
//                 child: Stack(
//                   children: [
//                     Positioned(
//
//                         child: Container(
//                           height: 170,
//                           width: 350,
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).primaryColor,
//                              borderRadius: BorderRadius.circular(15),
//
//                               boxShadow: [
//                                 BoxShadow(
//
//                                     color: Colors.black.withOpacity(0.3),
//                                     offset: new Offset(-10.0, 10.0),
//                                   spreadRadius: 4.8,
//                                   blurRadius: 20,
//                                 )
//                               ]
//
//                         )
//
//                         )
//                     ),
//                   Positioned(
//                       top: 0,
//                       left: 30,
//
//                       child: Card(
//                         elevation: 20.0,
//                    shadowColor: Colors.grey.withOpacity(0.5),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                         child:
//                           Image.asset(
//                             "assets/img/logo.png",
//                             width: 100,
//                             height: 100,
//                           ),
//
//
//
//
//
//
//
//
//                   ),
//
//
//                   ),
//                     Positioned(
//                       top: 120,
//                       left: 4,
//                       child: Row(
//
//                         children: [
//                           RaisedButton(
//
//                               child: Text("Add Task",),
//                               onPressed: (){},
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)
//                             ),
//
//                               ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           RaisedButton(
//                               child: Text("Add Task"),
//                               onPressed: (){},
//
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           RaisedButton(
//                               child: Text("Add Task"),
//                               onPressed: (){},
//
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                         top: 20,
//                         left: 150,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//
//                       children: [
//                         Text("Level 1",style: TextStyle(fontSize: 20,color: Colors.white ),),
//                         SizedBox(height: 10,),
//                         Text("Name of subject : java ",style: TextStyle(fontSize: 15,color: Colors.white ),),
//                         SizedBox(height: 10,),
//                         Text("By: Dr/Ezzaldeen kadri",style: TextStyle(fontSize: 15,color: Colors.white ),),
//
//                       ],
//
//
//                     ))
//
//                   ],
//                 ),
//
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 child: Stack(
//                   children: [
//                     Positioned(
//
//                         child: Container(
//                             height: 170,
//                             width: 350,
//                             decoration: BoxDecoration(
//                                 color: Theme.of(context).primaryColor,
//                                 borderRadius: BorderRadius.circular(15),
//
//                                 boxShadow: [
//                                   BoxShadow(
//
//                                     color: Colors.black.withOpacity(0.3),
//                                     offset: new Offset(-10.0, 10.0),
//                                     spreadRadius: 4.8,
//                                     blurRadius: 20,
//                                   )
//                                 ]
//
//                             )
//
//                         )
//                     ),
//                     Positioned(
//                       top: 0,
//                       left: 30,
//
//                       child: Card(
//                         elevation: 20.0,
//                         shadowColor: Colors.grey.withOpacity(0.5),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child:
//                         Image.asset(
//                           "assets/img/logo.png",
//                           width: 100,
//                           height: 100,
//                         ),
//
//
//
//
//
//
//
//
//                       ),
//
//
//                     ),
//                     Positioned(
//                       top: 120,
//                       left: 4,
//                       child: Row(
//
//                         children: [
//                           RaisedButton(
//
//                             child: Text("Add Task",),
//                             onPressed: (){},
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           RaisedButton(
//                             child: Text("Add Task"),
//                             onPressed: (){},
//
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           RaisedButton(
//                             child: Text("Add Task"),
//                             onPressed: (){},
//
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                         top: 20,
//                         left: 150,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//
//                           children: [
//                             Text("Level 2",style: TextStyle(fontSize: 20,color: Colors.white ),),
//                             SizedBox(height: 10,),
//                             Text("Name of subject : java ",style: TextStyle(fontSize: 15,color: Colors.white ),),
//                             SizedBox(height: 10,),
//                             Text("By: Dr/Ezzaldeen kadri",style: TextStyle(fontSize: 15,color: Colors.white ),),
//
//                           ],
//
//
//                         ))
//
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 child: Stack(
//                   children: [
//                     Positioned(
//
//                         child: Container(
//                             height: 170,
//                             width: 350,
//                             decoration: BoxDecoration(
//                                 color: Theme.of(context).primaryColor,
//                                 borderRadius: BorderRadius.circular(15),
//
//                                 boxShadow: [
//                                   BoxShadow(
//
//                                     color: Colors.black.withOpacity(0.3),
//                                     offset: new Offset(-10.0, 10.0),
//                                     spreadRadius: 4.8,
//                                     blurRadius: 20,
//                                   )
//                                 ]
//
//                             )
//
//                         )
//                     ),
//                     Positioned(
//                       top: 0,
//                       left: 30,
//
//                       child: Card(
//                         elevation: 20.0,
//                         shadowColor: Colors.grey.withOpacity(0.5),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child:
//                         Image.asset(
//                           "assets/img/logo.png",
//                           width: 100,
//                           height: 100,
//                         ),
//
//
//
//
//
//
//
//
//                       ),
//
//
//                     ),
//                     Positioned(
//                       top: 120,
//                       left: 4,
//                       child: Row(
//
//                         children: [
//                           RaisedButton(
//
//                             child: Text("Add Task",),
//                             onPressed: (){},
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           RaisedButton(
//                             child: Text("Add Task"),
//                             onPressed: (){},
//
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           RaisedButton(
//                             child: Text("Add Task"),
//                             onPressed: (){},
//
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                         top: 20,
//                         left: 150,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//
//                           children: [
//                             Text("Level 3",style: TextStyle(fontSize: 20,color: Colors.white ),),
//                             SizedBox(height: 10,),
//                             Text("Name of subject : java ",style: TextStyle(fontSize: 15,color: Colors.white ),),
//                             SizedBox(height: 10,),
//                             Text("By: Dr/Ezzaldeen kadri",style: TextStyle(fontSize: 15,color: Colors.white ),),
//
//                           ],
//
//
//                         ))
//
//                   ],
//                 ),
//               ),
//             ],
//           ),

        ],
      ),
    );


  }





  List<DataModel> dataList=[
  DataModel("ezz", "level", "drName",IconButton(

  icon: Icon(Icons.book),

  onPressed: (){},), IconButton(
  icon: Icon(Icons.task),
  onPressed: (){},), IconButton(
  icon: Icon(Icons.notifications),
  onPressed: (){},))

  ] ;
  }
class DataModel{
  var nameOfTheClass;
  var level;
  var drName;
  IconButton taskIcon;
  IconButton bookIcon;
  IconButton NotivationIcon;
  DataModel(
      this.nameOfTheClass,
      this.level,
      this.drName,
      this.taskIcon,
      this.bookIcon,
      this.NotivationIcon
      );
}
