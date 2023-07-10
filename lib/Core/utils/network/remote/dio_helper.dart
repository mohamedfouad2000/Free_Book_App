import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://www.googleapis.com/books/v1/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'Accept-Encoding': 'gzip, deflate, br',
      'Connection': 'keep-alive',
    };
    return await dio!.get(url, queryParameters: query);
  }

  // static Future<Response> removeData({
  //   required String url,
  //   Map<String, dynamic>? query,
  //   required Map<String, dynamic> data,
  //   String lang = 'en',
  //   String? token,
  // }) async {
  //   dio!.options.headers = {
  //     'lang': lang,
  //     'Authorization': token ?? '',
  //     'Content-Type': 'application/json',
  //   };
  //   return await dio!.delete(
  //     url,
  //     queryParameters: query,
  //     data: data,
  //   );
  // }
}
