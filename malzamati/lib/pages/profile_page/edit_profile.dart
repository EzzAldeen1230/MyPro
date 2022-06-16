// @dart=2.11
import 'package:flutter/material.dart';
import 'package:malzamati/pages/profile_page/image_controller.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final controller = HomeController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            child: HeaderWidget(200, true, Icons.edit_outlined),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 90, 0, 10),
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                            ),
                            child: ClipOval(
                              child: controller.image != null
                                  ? Image.file(
                                      controller.image,fit: BoxFit.fitWidth,
                                     
                                    )
                                  : Center(
                                      child: Text("no img"),
                                    ),
                            )),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              margin: EdgeInsets.only(),
                              height: 40,
                              width: 40,

                              child: ClipOval(
                                child: Container(



                                  child: IconButton(
                                    iconSize: 30,
                                    splashColor: Colors.black,

                                    onPressed: () async {
                                      await controller.pickImage();
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.camera_alt),

                                    color: Theme.of(context).primaryColor,

                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  buildTextField("Full Name", "EzzAldeen", false),
                  buildTextField("E-mail", "ezzaldeen@gmail.com", false),
                  buildTextField("Password", "********", true),
                  buildTextField("Location", "yemen, sanaa", false),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text("CANCEL",
                            style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2.2,
                                color: Colors.black)),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: Theme.of(context).accentColor,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
