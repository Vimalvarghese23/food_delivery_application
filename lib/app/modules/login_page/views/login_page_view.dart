import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 458,
              height: 306,
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
            SizedBox(height: 34),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 119),
                  child: Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Color(0xFF0A1F44),
                      fontSize: 35,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 0.01,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 45, top: 12),
                  child: SizedBox(
                    width: 308,
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        color: Color(0x4F414141),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                        letterSpacing: -0.15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 71),
                Padding(
                  padding: const EdgeInsets.only(right: 311, left: 34),
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
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 34, right: 33),
                  child: SizedBox(
                    height: 45,
                    width: 319,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFF2F2F2),
                          labelText: "User name/Email",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(right: 285, left: 34),
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
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 34, right: 33),
                  child: SizedBox(
                    height: 45,
                    width: 319,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFF2F2F2),
                          labelText: "Enter your Password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 194, right: 37),
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/forgot-password-page');
                    },
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF0037A6),
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 26),
                SizedBox(
                  height: 42,
                  width: 305,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color.fromRGBO(0, 55, 166, 1),
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Get.toNamed('/home-screen');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110),
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: -0.41,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
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
                        text: 'Sign up',
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
                            Get.toNamed('/sign-up-page');
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
