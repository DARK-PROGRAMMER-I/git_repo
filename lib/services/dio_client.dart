import 'package:dio/dio.dart';

import 'end_points.dart';

class DioClient{
  static BaseOptions options = new BaseOptions(
    // baseUrl: Endpoints.baseUrl,
    // headers: ,
    // connectTimeout: ,
  );

  Dio _dio = Dio(options);

  Future<dynamic> get(String uri,
      {
        Map<String, dynamic>? queryparams,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onRecieneProgress,
  })async{
    try{
      final
    }catch(e){
      rethrow;
    }
  }
}