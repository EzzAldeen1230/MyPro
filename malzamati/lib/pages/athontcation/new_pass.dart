// @dart=2.11
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:malzamati/pages/profile_page/profile_page.dart';
import 'package:malzamati/pages/widgets/header_login.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';
import 'package:malzamati/common/theme_helper.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key key}) : super(key: key);

  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    bool checkboxValue = false;

    String pass1="ksguyf";
    String pass2="ksguyf";

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 360,
              child: HeaderLogin(360, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 55, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 150,),
                  Text('Enter new Password ..',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    // textAlign: TextAlign.center,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        SizedBox(height: 100,),



                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration("new password", "Enter your password"),
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                           setState(() {
                             val==pass1;
                           });
                           return pass1;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),

                        SizedBox(height: 70.0),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                                "consistency*", "Enter your password agean"),
                            validator: (val) {
                              setState(() {
                                val==pass2;
                              });
                              return pass2;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[

                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                )
                              ],
                            );
                          },

                        ),
                        SizedBox(height: 90.0),
                        Container(
                          decoration: ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "create".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if(pass1==pass2)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                      builder: (context) => Profile()));
                                }


                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
