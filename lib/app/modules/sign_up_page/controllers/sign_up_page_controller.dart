import 'package:flutter/material.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_request.dart';
import 'package:food_delivery_application/app/network/repo/auth_repo.dart';
import 'package:food_delivery_application/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  //TODO: Implement SignUpPageController

  final count = 0.obs;
  final isChecked = false.obs;
  final TextEditingController nameController = TextEditingController();
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

  void isChecking(bool? value) {
    isChecked.value = value ?? false;
  }

  onSignupClicked() async {
    final AuthRepo repo = AuthRepo();
    final response = await repo.AuthResSignup(
      UserSignupReq(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response != null && response.error == null && response.token != null) {
      print("to login");
      Get.toNamed(Routes.LOGIN_PAGE);
    } else {
      Get.showSnackbar(GetSnackBar(
        title: "error",
        message: response?.error.toString(),
        duration: Duration(seconds: 3),
      ));
    }
  }
}
