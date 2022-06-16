// @dart=2.11


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // Color _primaryColor = HexColor('#DC54FE');
  //Color _accentColor = HexColor('#8A02AE');

  // Design color
  // Color _primaryColor= HexColor('#FFC867');
  // Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  Color _primaryColor= HexColor('#651BD2');
 Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.

 // Color _primaryColor= HexColor('#651B00');
 // Color _accentColor= HexColor('#320100');


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      title:'malzamti',
      debugShowCheckedModeBanner: false,

        theme: ThemeData(
          primaryColor: _primaryColor,
          accentColor: _accentColor,
          scaffoldBackgroundColor: Colors.grey.shade100,
          primarySwatch: Colors.grey,
        ),
        home: SplashScreen(title: 'Flutter Login UI'),

    );
  }
}


