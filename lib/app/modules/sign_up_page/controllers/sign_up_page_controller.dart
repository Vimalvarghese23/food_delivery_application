import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  //TODO: Implement SignUpPageController

  final count = 0.obs;
  final isChecked = false.obs;

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
}