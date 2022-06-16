// import 'package:malzamati/pages/screen/task.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DBHelper {
//   static Database _db;
//   static final _version = 1;
//   static final _tableName = "task";
//
//   static Future<void> initDb() async {
//     if (_db != null) {
//       return;
//     }
//     try {
//       String _path = await getDatabasesPath() + 'task.db';
//       _db = await openDatabase(
//           _path,
//           version: _version,
//           onCreate: (db, version) {
//             print("creating a new one");
//             return db.execute("CREATE TABLE $_tableName("
//                 "id INTEGER PRIMARY KEY AUTOINCREMENT, "
//                 "titel STRING, note TEXT, data STRING, "
//                 "startTime STRING,endTime STRING"
//                 ,
//             );
//
//           },
//
//       );
//
//     }catch(e){
//       print(e);
//     }
//   }
// static Future<int>insert(Task task)async{
//     print("insert function called");
//     return await _db.insert(_tableName, task!.toJson())??1;
// }
// static Future<List<Map<String,dynamic>>> query()async{
//     print("quary");
//     return await _db.query(_tableName);
// }
// }