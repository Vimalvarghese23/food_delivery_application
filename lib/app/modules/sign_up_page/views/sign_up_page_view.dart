// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_application/app/modules/sign_up_page/controllers/sign_up_page_controller.dart';

import 'package:get/get.dart';

class SignUpPageView extends GetView<SignUpPageController> {
  SignUpPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 458,
              height: 189,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/food2.jpeg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9),
                    BlendMode.dstATop,
                  ),
                ),
              ),
            ),
            SizedBox(height: 37),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 34, right: 204),
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          color: Color(0xFF414141),
                          fontSize: 35,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 0.01,
                          letterSpacing: -0.08,
                        ),
                      )),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 45),
                    child: SizedBox(
                        width: 308,
                        child: SizedBox(
                          width: 308,
                          child: Text(
                            'Hello there, sign up to continue!',
                            style: TextStyle(
                              color: Color(0x4F414141),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                              letterSpacing: -0.15,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(height: 62),
                  Padding(
                      padding: const EdgeInsets.only(right: 314, left: 31),
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: Color(0xFF7E8389),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.15,
                        ),
                      )),
                  SizedBox(height: 11),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 37),
                    child: SizedBox(
                      height: 45,
                      width: 319,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF2F2F2),
                            labelText: "Enter your User name",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                      padding: const EdgeInsets.only(right: 260, left: 31),
                      child: Text(
                        'Email address',
                        style: TextStyle(
                          color: Color(0x877E8389),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.15,
                        ),
                      )),
                  SizedBox(height: 11),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 37),
                    child: SizedBox(
                      height: 45,
                      width: 319,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF2F2F2),
                            labelText: "Enter Email address",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                      padding: const EdgeInsets.only(right: 288, left: 31),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xFF7E8389),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.15,
                        ),
                      )),
                  SizedBox(height: 11),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 37),
                    child: SizedBox(
                      height: 45,
                      width: 319,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xFFF2F2F2),
                            labelText: "Enter your password",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => Checkbox(
                            value: controller.isChecked.value,
                            onChanged: (bool? value) {
                              controller.isChecking(value);
                            },
                          )),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'By creating an account, you agree to our\n',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.15,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                color: Color(0xFF0037A6),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.15,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Terms & Conditions tapped!');
                                },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 18),
                  Obx(
                    () => SizedBox(
                      height: 42,
                      width: 305,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: controller.isChecked.value
                                ? Color.fromRGBO(0, 55, 166, 1)
                                : Colors.grey,
                            foregroundColor: Colors.white),
                        onPressed: () {
                          if (controller.isChecked.value == true) {
                            () {};
                          } else {
                            null;
                          }
                          Get.offAllNamed('/login-page');
                        },
                        child: Row(
                          children: [
                            SizedBox(width: 8),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 100),
                                child: Text(
                                  'Sign in',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: 1,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.15,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign in.',
                          style: TextStyle(
                            color: Color(0xFF3B5998),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.15,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed('/login-page');
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
