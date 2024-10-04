import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dark_light_theme/appTheme.dart';
import 'dark_light_theme/screen.dart';
import 'dark_light_theme/theme_controller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
      title: 'Dark Theme Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,        // Light theme data
      darkTheme: AppTheme.darkTheme,     // Dark theme data
      themeMode: themeController.theme, // Watch theme changes
      home: HomeScreen(),
    ));
  }
}
