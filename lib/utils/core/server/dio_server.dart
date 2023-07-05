import 'package:dio/dio.dart';

class DioServer {
 static  Dio dio = Dio();


 static Future<Response> getData ({
    required String url,
  })async {
    return await dio.get(url);
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
   dio.options.headers = {
     "Accept" : "application/json",
     "Content-Type" : "application/json"
   };
    return await dio.post(url, data:data);
  }

 static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
  })async {
   return await dio.put(url, data: data);
  }

 static Future<Response> deleteData({required String url, required Map<String, dynamic> data}) async
 {
    return await dio.delete(url, data: data);
  }
}
