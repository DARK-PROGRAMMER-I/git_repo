import 'package:dio/dio.dart';

import 'end_points.dart';

class DioClient{
  static BaseOptions options = new BaseOptions(
    baseUrl: Endpoints.baseUrl,
    receiveTimeout: Endpoints.receiveTimeOut,
    connectTimeout: Endpoints.connectionTimeOut,
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
      final Response response = await _dio.get(
        uri,
        queryParameters: queryparams,
        options: options,
        onReceiveProgress: onRecieneProgress,
        cancelToken: cancelToken
      );

      return response.data;
    }catch(e){
      rethrow;
    }
  }
}