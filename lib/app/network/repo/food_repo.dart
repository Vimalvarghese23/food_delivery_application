import 'package:dio/dio.dart';
import 'package:food_delivery_application/app/network/class%20model/food_response.dart';
import 'package:food_delivery_application/app/network/dio/dio_client.dart';
import 'package:food_delivery_application/app/network/dio/endpoints.dart';

class FoodRepo {
  final DioClient dioClient = DioClient(Dio());
  Future<FoodRes?> Foodres() async {
    try {
      final response = await dioClient.MainReqRes(
        endpoints: Endpoints.home,
      );
      if (response.statusCode == 200) {
        final Foodres = FoodRes.fromJson(response.data);
        if (Foodres.data != null) {
          return Foodres;
        } else {
          return FoodRes(error: "No data");
        }
      } else {
        if (response.statusCode == 400) {
          final Foodres = FoodRes.fromJson(response.data);
          return Foodres;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final Foodres = FoodRes.fromJson(e.response!.data);
        return Foodres;
      }

      final Foodres = FoodRes(error: "Unexpected Error");
      return Foodres;
    }
    final Foodres = FoodRes(error: "Unexpected Error fun");
    return Foodres;
  }
}
