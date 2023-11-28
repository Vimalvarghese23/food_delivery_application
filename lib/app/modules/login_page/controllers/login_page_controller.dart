import 'package:flutter/material.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_request.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_response.dart';
import 'package:food_delivery_application/app/network/repo/auth_repo.dart';
import 'package:food_delivery_application/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  //TODO: Implement LoginPageController

  final count = 0.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  onLoginClicked() async {
    final AuthRepo repo = AuthRepo();
    final response = await repo.AuthResLogin(
      UserSignupReq(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response != null && response.token != null && response.error == null) {
      Get.find<UserSignupRes>().token = response.token;
      Get.toNamed(Routes.HOME_SCREEN);
    } else {
      Get.showSnackbar(GetSnackBar(
        title: "error",
        message: response?.error.toString(),
        duration: Duration(seconds: 3),
      ));
    }
  }
}
