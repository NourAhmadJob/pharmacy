import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {

  static  late SharedPreferences sharedPreferences;

  static init() async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData({
    required dynamic key ,
    required dynamic value ,
}) async{

      if(key is String )  return await sharedPreferences.setString(key, value) ;
      if(key.toInt() is int )  return await sharedPreferences.setInt(key ,value) ;
      if(key.toBool is bool )  return await sharedPreferences.setBool(key, value) ;

      return await sharedPreferences.setDouble(key, value) ;
  }

 static dynamic getData({
    required String key,
}){
    sharedPreferences.get(key);
  }
}