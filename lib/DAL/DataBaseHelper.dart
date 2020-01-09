import 'dart:async';
import 'dart:io';
import 'package:alfyhaa_flutter_app/Model/Menager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {

  static Database _db;
  static String DatabaseName= "Menagerdb.db";

  static Future<Database> getdatabase() async {
    if (_db != null) {
      return _db;
    } else {
      _db = await OpenDb();
      return _db;
    }
  }

  static Future<Database> OpenDb() async {

    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, DatabaseName);
    //String appDocPath = dir.path;

    var Menagerdb = await openDatabase(path,version: 1,onCreate: _FirstCreate);
    return Menagerdb;
  }

  static void  _FirstCreate(Database db, int version) async {
    var CreateMenagerTable=
        "create table Menager (IdMenager INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL , name Text,"
        "e_mail Text NOT NULL, password Text NOT NULL,Department Text )";

    await db.execute(CreateMenagerTable);

    insertMenager(db);
}

// insert user
  static void insertMenager(Database dp) {
    Map<String,dynamic> MenagMap= new Map();
    MenagMap["name"]="ALAADDIN";
    MenagMap["e_mail"]="admin";
    MenagMap["password"]="admin";
    MenagMap["Department"]="DEVELOPER";

    dp.insert("Menager", MenagMap);
  }
   // مسح واعادة انشاء الداتابيس
  static void Restart() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, DatabaseName);

    File f = new File(path);

    if (!f.existsSync()){
      deleteDatabase(path);
      print("Database has deleted");

    }
  }

  //اغلاق الداتابيس عند كل اغلاق للبرنامج
  static Future<void> CloseDb() async {
    var db = await getdatabase();
    db.close();
    _db = null;
  }
}



