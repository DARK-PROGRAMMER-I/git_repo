import 'package:dio/dio.dart';

class DioExceptions implements Exception{
  String message = 'Error Not Specified yet!';
  String _handleError(int? statusCode, dynamic? error){
    switch(statusCode){
      case 400:
        return "Bad Request";
      case 404:
        return error["message"];
      case 500:
        return "Internal server error";
      default:
        return "Ops! Something went wrong!";
    }
  }

  @override
  String toSting()=> message;

  DioExceptions.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.connectTimeout:
        message = "Connection Timeout with API server!";
        break;
      case DioErrorType.sendTimeout:
        message = "Send Timeout in connection with API server!";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive Timeout in connection with API server!";
        break;
      case DioErrorType.response:
        message =
            _handleError(dioError.response?.statusCode, dioError.response?.data);
        break;
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.other:
        message = "Connection field to established due to internet loss";
        break;
      default:
        message = 'Something went wrong!';
        break;
    }
  }
}