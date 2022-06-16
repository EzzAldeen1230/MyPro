import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:malzamati/pages/teacher_pages/task_screen/model/class_list.dart';
import 'package:malzamati/pages/teacher_pages/task_screen/Widgets/botton.dart';
import 'package:malzamati/pages/teacher_pages/task_screen/add_task_bar.dart';
import 'package:malzamati/pages/widgets/custom_drawer.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class TaskPage extends StatefulWidget {
  const TaskPage({Key key}) : super(key: key);

  @override
  _TaskPage createState() => _TaskPage();
}

class _TaskPage extends State<TaskPage> {
  @override
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Theme.of(context).accentColor,
        drawer: CustomDrawer(
          closeDrawer: () {
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },
        ),
        screenContents: Task(),
        status: drawerStatus,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              drawerStatus = drawerStatus == FSBStatus.FSB_OPEN
                  ? FSBStatus.FSB_CLOSE
                  : FSBStatus.FSB_OPEN;
            });
          }),

    );
  }
}

class Task extends StatefulWidget {
  const Task({Key key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 230,
            child: HeaderWidget(200, false, Icons.house_rounded),
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              _addTaskBar(),
              SizedBox(
                height: 22,
              ),
              _addDateBar(),

              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        )),
                  ),
                  ListView.builder(
                      itemCount: classList.length,
                      itemBuilder: (context, index) => ClassCard(
                            itemIndex: index,
                            classl: classList[index],
                          ))
                ],
              )),
              Container(

                  margin: EdgeInsets.only(top: 20),
                  child: MyBotton(
                    lable: "Add Task",
                    onTop: () => Get.to(AddTask()),
                  )),
              //_showTask(),
              // Body(),
            ],
          ),
        ],
      ),
    );
  }

  _showTask() {
    return Expanded(child: ListView.builder(itemBuilder: (_, context) {
      return Container(
        width: 100,
        height: 50,
        color: Colors.indigo,
      );
    }));
  }

  _addDateBar() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 80,
        initialSelectedDate: DateTime.now(),
        selectionColor: Theme.of(context).primaryColor,
        selectedTextColor: Colors.white,
        dateTextStyle: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
        onDateChange: (date) {
          _selectedDate = date;
        },
      ),
    );
  }

  _addTaskBar() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMMd().format(DateTime.now()),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(height: 10),
                Text("Today",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}




class ClassCard extends StatelessWidget {
  const ClassCard({Key key, this.itemIndex, this.classl}) : super(key: key);
  final int itemIndex;
  final ClassList classl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.2,
        vertical: 20.0 / 2,
      ),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 20,
                      color: Theme.of(context).primaryColor)
                ]),
            child: Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(22)),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 150,
                width: 170,
                child: Image.asset(
                  classl.img,
                  fit: BoxFit.fitHeight,
                ),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 170,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 15, top: 10),
                      child: Text(
                        "Name : " +
                            classl.title +
                            " "
                                "teacher :" +
                            classl.description,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 2),
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),

                            bottomRight: Radius.circular(15),
                          )),
                      child: RaisedButton(
                        child: Text("Dawnload",style: TextStyle(color: Colors.white),),
                        onPressed: () {


                          _launchUrl();
                        },
                        color: Colors.transparent,
                        elevation: 0,
                        focusElevation: 0,
                        highlightElevation: 0,
                        hoverElevation: 0,
                        disabledElevation: 0,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),

    );
  }
}
void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}