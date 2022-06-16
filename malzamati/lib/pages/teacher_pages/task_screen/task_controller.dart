// import 'package:get/get.dart';
// import 'package:malzamati/pages/screen/task.dart';
//
// import 'db_helper.dart';
//
// class TaskContoller extends GetxController{
//
//   @override
//   void onReady(){
//     getTask();
//     super.onReady();
//   }
// }
//
// var taskList = <Task>[].obs;
// Future<int>addTask({Task task})async{
//   return await DBHelper.insert(task);
// }
//
// void getTask()async{
//   List<Map<String,dynamic>>task=await DBHelper.query();
//   taskList.assignAll(task.map((e) => new Task.fromJson(data)).toList());
// }