
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key key}) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(
        //     image: AssetImage('assets/img/immg.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,

        body: Stack(

          children: [

            Container(
              height: 230,
              child: HeaderWidget(200, false, Icons.house_rounded),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30
              ),
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                'Add\nTask',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: 50
                ),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(

                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Titel",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            onTap: (){

                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Description",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Link",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Theme.of(context).primaryColor,
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(
                                      Icons.add,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  'Cencel',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// // @dart=2.11
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:malzamati/pages/profile_page/profile_page.dart';
// import 'package:malzamati/pages/screen/task.dart';
// import 'package:malzamati/pages/widgets/header_widget.dart';
//
//
//
// class AddTextField extends StatefulWidget {
//   @override
//   _AddTextField createState() => _AddTextField();
// }
//
// class _AddTextField extends State<AddTextField> {
//   final TextEditingController _titleController=TextEditingController();
//   final TextEditingController _noteController=TextEditingController();
//   final TextEditingController _linkController =TextEditingController();
//   bool showdate = true;
//   DateTime _selectedDateTime=DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Stack(
//
//         children: [
//           Container(height: 200, child: HeaderWidget(200,true,Icons.task),),
//
//           Container(
//             padding: EdgeInsets.only(left: 16, top:60, right: 16),
//             child: GestureDetector(
//               onTap: () {
//                 FocusScope.of(context).unfocus();
//               },
//               child: ListView(
//
//                 children: [
//
//                   SizedBox(
//                     height: 90,
//                   ),
//                   SizedBox(
//                     height: 35,
//                   ),
//
//                   buildTextField("Titel", "Enter the title", false),
//                   buildTextField("Description", "Enter the Description", false),
//                   buildTextField("Date",DateFormat.yMd().format(_selectedDateTime).toString(), true),
//                   buildTextField("Link", "wwww.Ezzaldeen.com", false,),
//                   SizedBox(
//                     height: 35,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       OutlineButton(
//                         padding: EdgeInsets.symmetric(horizontal: 50),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         onPressed: () {},
//                         child: Text("CANCEL",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 letterSpacing: 2.2,
//                                 color: Colors.black)),
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//
//                           return _validateData();
//
//                         },
//                         color: Theme.of(context).accentColor,
//                         padding: EdgeInsets.symmetric(horizontal: 50),
//                         elevation: 2,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         child: Text(
//                           "SAVE",
//                           style: TextStyle(
//                               fontSize: 14,
//                               letterSpacing: 2.2,
//                               color: Colors.white),
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//
//   }
//
//   Widget buildTextField(
//       String labelText, String placeholder, bool isDateTextField) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 35.0),
//       child: TextField(
//         obscureText: isDateTextField ? showdate : false,
//         decoration: InputDecoration(
//             suffixIcon: isDateTextField
//                 ? IconButton(
//               onPressed: () {
//                 _getDateFromUser();
//               },
//               icon: Icon(
//                 Icons.calendar_today,
//                 color: Colors.grey,
//               ),
//             )
//                 : null,
//             contentPadding: EdgeInsets.only(bottom: 3),
//             labelText: labelText,
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholder,
//             hintStyle: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             )),
//       ),
//     );
//   }
//
//   _getDateFromUser()async{
//
//     DateTime _pickerDate=await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2017),
//         lastDate:DateTime(2122));
//     if(_pickerDate!=null){
//       setState(() {
//         _selectedDateTime =_pickerDate;
//       });
//
//
//     }
//     else{
//       print("error");
//     }
//
// }
// _validateData(){
//     if(_titleController.text.isNotEmpty&& _noteController.text.isNotEmpty)
//       {
//         Get.back();
//       }
//     else if(_titleController.text.isEmpty||_noteController.text.isEmpty){
//       Get.snackbar("requierd", " all filled are required ",snackPosition: SnackPosition.BOTTOM,backgroundColor:Colors.red,icon: Icon(Icons.warning));
//
//     }
// }
//
// }
