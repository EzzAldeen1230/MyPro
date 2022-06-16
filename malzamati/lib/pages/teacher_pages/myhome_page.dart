// @dart=2.11

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:malzamati/common/theme_helper.dart';
import 'package:malzamati/pages/teacher_pages/list.dart';
import 'package:malzamati/pages/widgets/custom_drawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        screenContents: FirstScreen(),
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

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(

            floating: true,

            expandedHeight: 200,
            backgroundColor:Theme.of(context).primaryColor,
            title: Text("Chapter App",style: TextStyle(color: Colors.white),),


            flexibleSpace: FlexibleSpaceBar(
              background:
             ClipRect(
               child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),

                  ),

                  gradient: new LinearGradient(
                    colors: [

                      Theme
                          .of(context)
                          .primaryColor,
                      Theme
                          .of(context)
                          .accentColor,

                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],

                  ),

                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 88,
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

                      child: Text(
                        "Wellcome", style: TextStyle(fontSize: 40, color: Theme
                          .of(context)
                          .accentColor,),),

                    )
                  ],
                ),
              ),
             ),
            ),
          ),

         SliverList(delegate: SliverChildListDelegate(
           [
             Container(
               margin: const EdgeInsets.only(bottom: 10, top: 20),
               height: 120,

               padding:
               const EdgeInsets.only(left: 20, right: 20, bottom: 20),
               child: Container(
                 decoration:ThemeHelper().buttonBoxDecoration(context),

                 child: Column(
                   children: [
                     Row(
                       children: [
                         Card(
                             color: Colors.transparent,
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
                             Icon(Icons.book,color: Colors.white,size: 40,)
                         ),
                         Container(
                           margin: EdgeInsets.only(
                               top: 10
                               , left: 20
                           ),
                           child: Text("Add a Book",
                             style: TextStyle(color: Colors.white,fontSize: 20),),

                         )

                       ],
                     ),

                     Container(
                       width: 190,
                       height: 25,
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.white,width: 0.5),

                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           stops: [0.0, 1.0],
                           colors: [Theme.of(context).accentColor,
                             Theme.of(context).primaryColor,

                           ],
                         ),
                         color: Colors.deepPurple.shade300,
                         borderRadius: BorderRadius.circular(30),
                       ),





                       child: RaisedButton(
                         color: Colors.transparent,


                         child: Text("View The Classes",style: TextStyle(color: Colors.white,fontSize: 11),),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => Classes()));
                         },
                         // shape: RoundedRectangleBorder(
                         //
                         //   borderRadius: BorderRadius.only(
                         //     topRight: Radius.circular(40),
                         //       bottomRight: Radius.circular(40),
                         //       bottomLeft: Radius.circular(40),
                         //     topLeft: Radius.circular(40)
                         //   ),
                         //
                         // ),


                       ),
                     )
                   ],
                 ),
               )
               ,
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 10, top: 20),
               height: 120,

               padding:
               const EdgeInsets.only(left: 20, right: 20, bottom: 20),
               child: Container(
                 decoration:ThemeHelper().buttonBoxDecoration(context),

                 child: Column(
                   children: [
                     Row(
                       children: [
                         Card(
                             color: Colors.transparent,
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
                             Icon(Icons.book,color: Colors.white,size: 40,)
                         ),
                         Container(
                           margin: EdgeInsets.only(
                               top: 10
                               , left: 20
                           ),
                           child: Text("Add a Book",
                             style: TextStyle(color: Colors.white,fontSize: 20),),

                         )

                       ],
                     ),

                     Container(
                       width: 190,
                       height: 25,
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.white,width: 0.5),

                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           stops: [0.0, 1.0],
                           colors: [Theme.of(context).accentColor,
                             Theme.of(context).primaryColor,

                           ],
                         ),
                         color: Colors.deepPurple.shade300,
                         borderRadius: BorderRadius.circular(30),
                       ),





                       child: RaisedButton(
                         color: Colors.transparent,


                         child: Text("View The Classes",style: TextStyle(color: Colors.white,fontSize: 11),),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => Classes()));
                         },
                         // shape: RoundedRectangleBorder(
                         //
                         //   borderRadius: BorderRadius.only(
                         //     topRight: Radius.circular(40),
                         //       bottomRight: Radius.circular(40),
                         //       bottomLeft: Radius.circular(40),
                         //     topLeft: Radius.circular(40)
                         //   ),
                         //
                         // ),


                       ),
                     )
                   ],
                 ),
               )
               ,
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 10, top: 20),
               height: 120,

               padding:
               const EdgeInsets.only(left: 20, right: 20, bottom: 20),
               child: Container(
                 decoration:ThemeHelper().buttonBoxDecoration(context),

                 child: Column(
                   children: [
                     Row(
                       children: [
                         Card(
                             color: Colors.transparent,
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
                             Icon(Icons.book,color: Colors.white,size: 40,)
                         ),
                         Container(
                           margin: EdgeInsets.only(
                               top: 10
                               , left: 20
                           ),
                           child: Text("Add a Book",
                             style: TextStyle(color: Colors.white,fontSize: 20),),

                         )

                       ],
                     ),

                     Container(
                       width: 190,
                       height: 25,
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.white,width: 0.5),

                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           stops: [0.0, 1.0],
                           colors: [Theme.of(context).accentColor,
                             Theme.of(context).primaryColor,

                           ],
                         ),
                         color: Colors.deepPurple.shade300,
                         borderRadius: BorderRadius.circular(30),
                       ),





                       child: RaisedButton(
                         color: Colors.transparent,


                         child: Text("View The Classes",style: TextStyle(color: Colors.white,fontSize: 11),),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => Classes()));
                         },
                         // shape: RoundedRectangleBorder(
                         //
                         //   borderRadius: BorderRadius.only(
                         //     topRight: Radius.circular(40),
                         //       bottomRight: Radius.circular(40),
                         //       bottomLeft: Radius.circular(40),
                         //     topLeft: Radius.circular(40)
                         //   ),
                         //
                         // ),


                       ),
                     )
                   ],
                 ),
               )
               ,
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 10, top: 20),
               height: 120,

               padding:
               const EdgeInsets.only(left: 20, right: 20, bottom: 20),
               child: Container(
                 decoration:ThemeHelper().buttonBoxDecoration(context),

                 child: Column(
                   children: [
                     Row(
                       children: [
                         Card(
                             color: Colors.transparent,
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
                             Icon(Icons.book,color: Colors.white,size: 40,)
                         ),
                         Container(
                           margin: EdgeInsets.only(
                               top: 10
                               , left: 20
                           ),
                           child: Text("Add a Book",
                             style: TextStyle(color: Colors.white,fontSize: 20),),

                         )

                       ],
                     ),

                     Container(
                       width: 190,
                       height: 25,
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.white,width: 0.5),

                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           stops: [0.0, 1.0],
                           colors: [Theme.of(context).accentColor,
                             Theme.of(context).primaryColor,

                           ],
                         ),
                         color: Colors.deepPurple.shade300,
                         borderRadius: BorderRadius.circular(30),
                       ),





                       child: RaisedButton(
                         color: Colors.transparent,


                         child: Text("View The Classes",style: TextStyle(color: Colors.white,fontSize: 11),),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => Classes()));
                         },
                         // shape: RoundedRectangleBorder(
                         //
                         //   borderRadius: BorderRadius.only(
                         //     topRight: Radius.circular(40),
                         //       bottomRight: Radius.circular(40),
                         //       bottomLeft: Radius.circular(40),
                         //     topLeft: Radius.circular(40)
                         //   ),
                         //
                         // ),


                       ),
                     )
                   ],
                 ),
               )
               ,
             ),Container(
               margin: const EdgeInsets.only(bottom: 10, top: 20),
               height: 120,

               padding:
               const EdgeInsets.only(left: 20, right: 20, bottom: 20),
               child: Container(
                 decoration:ThemeHelper().buttonBoxDecoration(context),

                 child: Column(
                   children: [
                     Row(
                       children: [
                         Card(
                             color: Colors.transparent,
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
                             Icon(Icons.book,color: Colors.white,size: 40,)
                         ),
                         Container(
                           margin: EdgeInsets.only(
                               top: 10
                               , left: 20
                           ),
                           child: Text("Add a Book",
                             style: TextStyle(color: Colors.white,fontSize: 20),),

                         )

                       ],
                     ),

                     Container(
                       width: 190,
                       height: 25,
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.white,width: 0.5),

                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           stops: [0.0, 1.0],
                           colors: [Theme.of(context).accentColor,
                             Theme.of(context).primaryColor,

                           ],
                         ),
                         color: Colors.deepPurple.shade300,
                         borderRadius: BorderRadius.circular(30),
                       ),





                       child: RaisedButton(
                         color: Colors.transparent,


                         child: Text("View The Classes",style: TextStyle(color: Colors.white,fontSize: 11),),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => Classes()));
                         },
                         // shape: RoundedRectangleBorder(
                         //
                         //   borderRadius: BorderRadius.only(
                         //     topRight: Radius.circular(40),
                         //       bottomRight: Radius.circular(40),
                         //       bottomLeft: Radius.circular(40),
                         //     topLeft: Radius.circular(40)
                         //   ),
                         //
                         // ),


                       ),
                     )
                   ],
                 ),
               )
               ,
             ),

           ]
         ))

        ],

      ));
  }}