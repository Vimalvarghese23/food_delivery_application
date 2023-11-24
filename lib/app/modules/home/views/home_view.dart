import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ResponsiveApp(),
      ),
    );
  }
}

class ResponsiveApp extends GetResponsiveView<HomeController> {
  ResponsiveApp()
      : super(
          settings: ResponsiveScreenSettings(
            desktopChangePoint: 1500,
            tabletChangePoint: 1000,
            watchChangePoint: 300,
          ),
        );
}
