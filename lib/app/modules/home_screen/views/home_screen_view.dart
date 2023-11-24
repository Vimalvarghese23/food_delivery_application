import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 100),
                SizedBox(
                  width: 334,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'Hello Vimal',
                      style: TextStyle(
                        color: Color(0xFF0A1F44),
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.08,
                      ),
                    ),
                  ),
                ),
                LetterAvatar(
                  text: 'V',
                  size: 40,
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(
                  height: 45,
                  width: 292,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        onTap: () {
                          print('Text field tapped');
                        },
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: 'Search by restaurant or food',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color(0xFF7E8389),
                            fontSize: 13,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.mic),
                            color: Colors.grey.shade800,
                            onPressed: () {
                              print('Mic icon tapped');
                            },
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search),
                            color: Colors.grey.shade800,
                            onPressed: () {
                              print('Search icon tapped');
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 73.88),
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 30.49),
                  child: Container(
                    width: 38.21,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(width: 32, height: 32),
                        ),
                        Positioned(
                          left: 1,
                          top: 1,
                          right: 2,
                          bottom: 1,
                          child: IconButton(
                            icon: Icon(Icons.filter_alt_outlined),
                            color: Colors.grey.shade800,
                            onPressed: () {
                              print('filter icon tapped');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 26),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: const Text(
                    'Top categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Show all tapped!");
                  },
                  child: Text(
                    'Show all',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFFFCC00),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.15,
                    ),
                  ),
                ),
                Center(
                    child: IconButton(
                        onPressed: () {
                          print('tapp arrow');
                        },
                        icon: Icon(
                          Icons.arrow_right,
                          color: Color(0xFFFFCC00),
                        )))
              ],
            ),
            SizedBox(height: 19),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TopcategoriesContainer('images/food3.jpg', Colors.orange,
                      'Burgers', '1126 places', () {
                    print('burger tapped');
                  }),
                  TopcategoriesContainer('images/food4.jpg', Color(0xFF5AC8FA),
                      'American', '142 places', () {
                    print('american tapped');
                  }),
                  TopcategoriesContainer('images/pizza.png', Color(0xFF5856D6),
                      'Pizza', '365 places', () {
                    print('pizza tapped');
                  }),
                  TopcategoriesContainer('images/chik.png', Color(0xFFFF3B30),
                      'Barbecue', '523 places', () {
                    print('barbrcue tapped');
                  }),
                  TopcategoriesContainer('images/met.png', Colors.purple,
                      'Beef steake', '493 places', () {
                    print('beef tapped');
                  }),
                ],
              ),
            ),
            SizedBox(height: 43),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 35),
              child: SizedBox(
                width: 334,
                child: Text(
                  'Near You',
                  style: TextStyle(
                    color: Color(0xFF0A1F44),
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    height: 0.04,
                    letterSpacing: -0.08,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NearYouContainer(
                      'images/san.png',
                      'Sandwich Tantuni',
                      'NK Tantuni, Kadıköy',
                      '4.8',
                      '(233 ratings)',
                      Color(0xFFFFC107),
                      'Free delivery', () {
                    print('container 1 tapped');
                  }),
                  NearYouContainer(
                      'images/piz.jpeg',
                      'Pizza with salmon',
                      'Dominos Pizza, Sarıgazi',
                      '4.3',
                      '(233 ratings)',
                      Colors.white,
                      '', () {
                    print('container 2 tapped');
                  }),
                  NearYouContainer('images/burg.jpg', 'Burgers', 'Burger king',
                      '4.1', '(321 ratings)', Colors.white, '', () {
                    print('container 3 tapped');
                  }),
                  NearYouContainer('images/kfc.jpg', 'Kfc grilled chicken',
                      'Kfc', '4.0', '(358 ratings)', Colors.white, '', () {
                    print('container 4 tapped');
                  }),
                ],
              ),
            ),
            SizedBox(height: 53),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      'Discover new places ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 0.04,
                        letterSpacing: -0.08,
                      ),
                    )),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      print("Show all tapped!");
                    },
                    child: Text(
                      'Show all',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    )),
                Center(
                    child: IconButton(
                        onPressed: () {
                          print('tapp arrow');
                        },
                        icon: Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                        )))
              ],
            ),
            SizedBox(height: 19),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DiscovernewplacesContainer(
                      'images/pizhut.png', 'Pizza Hut', '33 Mins', () {
                    print('pizza tapped');
                  }),
                  DiscovernewplacesContainer(
                      'images/nesr.png', 'Nusret Et', '35 Mins', () {
                    print('Nusret tapped');
                  }),
                  DiscovernewplacesContainer(
                      'images/burking.png', 'Burger Kıng', '38 Mins', () {
                    print('burger tapped');
                  }),
                  DiscovernewplacesContainer(
                      'images/1912.png', 'Develi', '40 Mins', () {
                    print('Develi tapped');
                  }),
                  DiscovernewplacesContainer(
                      'images/kfclog.png', 'KFC', '42 Mins', () {
                    print('KFC tapped');
                  }),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
