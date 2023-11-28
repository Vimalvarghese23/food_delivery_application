import 'package:flutter/material.dart';
import 'package:food_delivery_application/app/network/class%20model/signup_response.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.lazyPut(() => UserSignupRes());

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
