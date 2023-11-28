import 'package:dio/dio.dart';
import 'package:food_delivery_application/app/data/token.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_request.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_response.dart';
import 'package:food_delivery_application/app/network/dio/dio_client.dart';
import 'package:food_delivery_application/app/network/dio/endpoints.dart';
import 'package:get/get.dart';

class AuthRepo {
  final DioClient dioClient = DioClient(Dio());
  Future<UserSignupRes?> AuthResSignup(UserSignupReq SignUpRes) async {
    try {
      final response = await dioClient.MainReqRes(
        endpoints: Endpoints.signup,
        data: SignUpRes.toJson(),
      );
      print(response);
      if (response.statusCode == 200) {
        final signupResponse = UserSignupRes.fromJson(response.data);
        if (signupResponse.token != null) {
          return signupResponse;
        } else {
          final signupResponse =
              UserSignupRes(error: "User have no Account ! Something wrong");
          return signupResponse;
        }
      } else {
        final signupResponse = UserSignupRes.fromJson(response.data);
        if (response.statuscode == 500) {
          return signupResponse;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final signupResponse = UserSignupRes.fromJson(e.response!.data);
        return signupResponse;
      }
      final signupResponse = UserSignupRes(error: "Unexpected Error");
      return signupResponse;
    }
    final signupResponse =
        UserSignupRes(error: "Unexpected Error Not goes to Signup Page");
    return signupResponse;
  }

  Future<UserSignupRes?> AuthResLogin(UserSignupReq loginReq) async {
    try {
      final response = await dioClient.MainReqRes(
        endpoints: Endpoints.login,
        data: loginReq.toJson(),
      );
      print(response);
      if (response.statusCode == 200) {
        final loginResponse = UserSignupRes.fromJson(response.data);
        if (loginResponse.token != null) {
          Get.put<Token>(Token(token: loginResponse.token), permanent: true);
          return loginResponse;
        } else {
          final loginResponse =
              UserSignupRes(error: "User have no Account, Somthing wrong");
          return loginResponse;
        }
      } else {
        final loginResponse = UserSignupRes.fromJson(response.data);
        if (response.statuscode == 500) {
          return loginResponse;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final loginResponse = UserSignupRes.fromJson(e.response!.data);
        return loginResponse;
      }
      final loginResponse = UserSignupRes(error: "Unexpected Error");
      return loginResponse;
    }
    final loginResponse =
        UserSignupRes(error: "Unexpected Error Not goes to Signup Page");
    return loginResponse;
  }
}
