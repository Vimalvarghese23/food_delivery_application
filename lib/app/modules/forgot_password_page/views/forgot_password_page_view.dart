import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_page_controller.dart';

class ForgotPasswordPageView extends GetView<ForgotPasswordPageController> {
  const ForgotPasswordPageView({Key? key}) : super(key: key);
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
            SizedBox(height: 41),
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 34, right: 85),
                    child: Text(
                      'Forgot password',
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
                      child: Text(
                        'Please enter your email address. You will receive a link to create a new password via email.',
                        style: TextStyle(
                          color: Color(0x4F414141),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: -0.15,
                        ),
                      ),
                    )),
                SizedBox(height: 60),
                Padding(
                    padding: const EdgeInsets.only(right: 315, left: 30),
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
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 34, right: 33),
                  child: SizedBox(
                    height: 45,
                    width: 319,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFF2F2F2),
                          labelText: "Enter Your Name",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                  ),
                ),
                SizedBox(height: 27),
                SizedBox(
                  height: 42,
                  width: 305,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color.fromRGBO(0, 55, 166, 1),
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110),
                            child: Text(
                              'Sent',
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
                SizedBox(height: 140),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 96, right: 106, bottom: 41),
                  child: Text.rich(
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
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
