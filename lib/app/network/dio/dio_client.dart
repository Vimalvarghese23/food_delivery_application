import 'package:dio/dio.dart';
import 'package:food_delivery_application/app/network/dio/endpoints.dart';
import 'package:get/get.dart' as G;
import 'package:food_delivery_application/app/data/constants.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: false,
      responseBody: true,
      compact: false,
    ));
  }
  Future<dynamic> MainReqRes({
    required Endpoints endpoints,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    Response response;
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    String? _token = G.Get.find<UserSignupRes>().token;
    print("get token$_token");
    _dio.options.headers
        .addAll({"Authorization": "Bearer${_token ?? "No token"}"});
    try {
      switch (endpoints.type()) {
        case ReqType.GET:
          response = await _dio.get(
            "$baseUrl/${endpoints.path()}",
            data: data,
          );
          break;
        case ReqType.POST:
          response = await _dio.post(
            "$baseUrl/${endpoints.path()}",
            data: data,
          );
          break;
        default:
          response = await _dio.post(
            "$baseUrl/${endpoints.path()}",
            data: data,
          );
      }
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        response = e.response!;
      } else {
        switch (e.type) {
          case DioException.receiveTimeout:
            response = Response(
              requestOptions: e.requestOptions,
              statusMessage: "Received time out",
              statusCode: 700,
            );
            break;
          default:
            response = Response(
              requestOptions: e.requestOptions,
              statusCode: 800,
              statusMessage: "Ther is some error",
            );
        }
      }
      return response;
    }
  }
}

enum ReqType {
  GET,
  PUT,
  POST,
}
