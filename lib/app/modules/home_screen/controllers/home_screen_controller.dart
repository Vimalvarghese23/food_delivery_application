import 'package:flutter/material.dart';
import 'package:food_delivery_application/app/network/class%20model/food_response.dart';
import 'package:food_delivery_application/app/network/repo/food_repo.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController

  final count = 0.obs;
  late Future<FoodRes?> foodData;

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

  Future<FoodRes?> fetchAllData() async {
    final FoodRepo foodRepo = FoodRepo();
    final response = await foodRepo.Foodres();
    return response;
  }
}

class LetterAvatar extends StatelessWidget {
  final String text;
  final double size;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;

  const LetterAvatar({
    Key? key,
    required this.text,
    this.size = 40.0,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderColor = Colors.black,
    this.borderWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: size * 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

Widget TopcategoriesContainer(
  String imagePath,
  Color color,
  String name,
  dynamic name1,
  VoidCallback? ontap,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 16),
    child: GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(width: 44, height: 41.25),
                ),
                Positioned(
                  left: 22,
                  top: 23,
                  right: 22,
                  bottom: 23.75,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.41,
            ),
          ),
          SizedBox(height: 5),
          Text(
            name1,
            style: TextStyle(
              color: Color(0xFFB8BBC5),
              fontSize: 13,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.08,
            ),
          )
        ],
      ),
    ),
  );
}

Widget NearYouContainer(
  String imagePath,
  String name,
  String name1,
  dynamic name2,
  dynamic name3,
  Color? color,
  String? name4,
  VoidCallback? onTap,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 16),
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(width: 200, height: 250),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w800,
              height: 0.08,
              letterSpacing: -0.41,
            ),
          ),
          SizedBox(height: 15),
          Text(
            name1,
            style: TextStyle(
              color: Color(0xFFB8BBC5),
              fontSize: 13,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: -0.08,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(
                name2?.toString() ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.08,
                ),
              ),
              SizedBox(width: 5),
              Text(
                name3?.toString() ?? '',
                style: TextStyle(
                  color: Color(0xFFB8BBC5),
                  fontSize: 13,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.08,
                ),
              ),
              SizedBox(width: 10),
              if (color != null && name4 != null)
                Container(
                  height: 17,
                  width: 77,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      name4,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 12,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.08,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget DiscovernewplacesContainer(
  String imagePath,
  String name,
  dynamic name1,
  VoidCallback? onTap,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 16),
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFD7D7D7),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(width: 58, height: 55),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
              height: 0.08,
              letterSpacing: -0.41,
            ),
          ),
          SizedBox(height: 15),
          Text(
            name1,
            style: TextStyle(
              color: Color(0xFFB8BBC5),
              fontSize: 13,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: -0.08,
            ),
          ),
        ],
      ),
    ),
  );
}
