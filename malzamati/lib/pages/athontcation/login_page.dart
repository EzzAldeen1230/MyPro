
// @dart=2.11
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:malzamati/common/theme_helper.dart';
import 'package:malzamati/pages/athontcation/forgot_password_page.dart';
// import 'package:malzamati/pages/student_pages/myhome_page.dart';
import 'package:malzamati/pages/teacher_pages/myhome_page.dart';
import 'package:malzamati/pages/widgets/header_login.dart';



import 'registration_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  bool ckek = false;
  bool ckek1 = false;
  int val=-1;
  double _headerHeight = 300;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderLogin(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container( 
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                child: Column(
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Signin into your account',

                      style: TextStyle(color: Colors.grey,fontSize: 15),

                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Teacher"),
                        Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value;
                            });
                          },
                          activeColor:Theme.of(context).primaryColor,
                        ),
                                Text("Student"),
                                Radio(
                                  value: 2,
                                  groupValue: val,
                                  onChanged: (value) {
                                    setState(() {
                                      val = value;
                                    });
                                  },
                                  activeColor: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),

                            Container(

                              child: TextField(
                               // autofocus: true,
                                decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your user name'),
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              child: TextField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              margin: EdgeInsets.fromLTRB(10,0,10,20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push( context, MaterialPageRoute( builder: (context) => ForgotPasswordPage()), );
                                },
                                child: Text( "Forgot your password?", style: TextStyle( color: Colors.grey, ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Sign In'.toUpperCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),

                                onPressed: (){
                                  //After successful login we will redirect to profile page. Let's create profile page now

                                  if(val==2)
                                    {
                                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePageS()));

                                    }
                                 else if(val==1)
                                  {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePage()));

                                  }
                                  else{
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginPage()));

                                  }
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10,20,10,20),
                              //child: Text('Don\'t have an account? Create'),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: "Don\'t have an account? "),
                                    TextSpan(
                                      text: 'Create',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                                        },
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                                    ),
                                  ]
                                )
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}