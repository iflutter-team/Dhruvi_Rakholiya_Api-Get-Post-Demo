import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sitafal/utils/internet_connection.dart';

class FrbServices{
  static FirebaseDatabase database = FirebaseDatabase.instance;
  static Future<bool> addData(String add, dynamic value) async {
    bool isAddData = false;
    bool connection = await InternetConnection.checkUserConnection();  ///check internet connection
    if(connection){
      try{
        String? key = database.ref(add).push().key;  ///generate unique key
        add = "$add/$key";  ///path to unique key
        DatabaseReference _dataBaseRef = database.ref(add) ;  ///create reference for data send and receive
        await _dataBaseRef.set(value).then((value) {
          isAddData = true;
        });
        // ignore: unused_catch_stack
      }on PlatformException catch(error , stackTrace){
        //print(stackTrace);
        isAddData = false;
        Get.snackbar("SignUp Error!!", error.message!);
      } catch(e){
        Get.snackbar("SignUp Error!!", "$e");
        isAddData = false ;
      }
    }
    return isAddData;
  }

  static Future<Map?> getAllData(String key) async {
    Map? allData;
    bool connection = await InternetConnection.checkUserConnection();  ///check internet connection
    if(connection){
      try{
        DatabaseReference _dataBaseRef = database.ref(key);  ///create reference for data send and receive
        await _dataBaseRef.get().then((value){
          allData = value.value as Map;
          //print(value);
        });
      }on PlatformException catch(error){
        //print(stackTrace);
        Get.snackbar("Data Error!!", error.message!);
      } catch(e){
        Get.snackbar("Data Error!!", "$e");
      }
    }
    return allData;
  }
// static getData(){}
}