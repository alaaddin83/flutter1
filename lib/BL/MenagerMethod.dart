import 'package:alfyhaa_flutter_app/Model/Menager.dart';
import 'package:sqflite/sqflite.dart';
import 'package:alfyhaa_flutter_app/DAL/DataBaseHelper.dart';

class MenagerMethod {

  // الاضافة
    static Future<int> AddMenager (Menager  menager) async{
      Database myDatabase = await DataBaseHelper.getdatabase()  ;
    Map<String,dynamic> MenagMap= new Map();
    MenagMap["name"]=menager.M_Name;
    MenagMap["e_mail"]=menager.M_e_mail;
    MenagMap["password"]=menager.M_Password;
    MenagMap["Department"]=menager.M_Department;

    myDatabase.insert("Menager", MenagMap);
    }

    //ارجاع كافة الاداريين
   static Future<List> GetAlluser() async {
      Database myDatabase = await DataBaseHelper.getdatabase()  ;
      
     List users= await myDatabase.rawQuery("select * from Menager");
     return users.toList();

    }

    //delet method
   static Future<int> DeletUser(int IdMenager) async{
     Database myDatabase = await DataBaseHelper.getdatabase()  ;

    int result=await myDatabase.delete("Menager", where: "IdMenager=${IdMenager}");

    return result;
   }

   //edit
   static Future<int> EditUser(Menager oldUser) async{
      Database myDatabase = await DataBaseHelper.getdatabase()  ;

      Map<String,dynamic> newUser= new Map();
      newUser["IdMenager"]=oldUser.idMenager.toString();
      newUser["name"]=oldUser.M_Name;
      newUser["e_mail"]=oldUser.M_e_mail;
      newUser["password"]=oldUser.M_Password;
      newUser["Department"]=oldUser.M_Department;

      int result=await myDatabase.update("Menager", newUser);

      return result;
    }

}