import 'package:food_delivery_application/app/network/dio/dio_client.dart';

enum Endpoints { login, signup, home }

extension EndpointData on Endpoints {
  String path() {
    String path = "";
    switch (this) {
      case Endpoints.signup:
        path = "api/user/signup";
      case Endpoints.login:
        path = "api/user/login";
      case Endpoints.home:
        path = "api/food";
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case Endpoints.signup:
        type = ReqType.POST;
      case Endpoints.login:
        type = ReqType.POST;
      case Endpoints.home:
        type = ReqType.GET;
    }
    return type;
  }

  bool hasToken() {
    bool hasToken = false;
    switch (this) {
      case Endpoints.signup:
        hasToken = false;
        break;
      case Endpoints.login:
        hasToken = false;
      default:
        hasToken = true;
        break;
    }
    return hasToken;
  }
}
