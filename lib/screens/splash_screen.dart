import 'dart:async';

import 'package:coffee_app/utils/shared_preferences.dart';
import 'package:coffee_app/utils/theme_check.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
    super.initState();
    moveToScreen();
  }

  moveToScreen()
  {
    Timer(Duration(seconds: 3),() async {
      check();
    });
  }
  @override
  Widget build(BuildContext context) {

    final theme = ThemeCheckFunctions.isDarkMode(context);

    return Container(
      color: theme ?  AppColors.dark : AppColors.light,
      child: theme ? Image.asset('assets/splash_icon_for_dark.png') : Image.asset('assets/splash_icon_for_light.png'),
    );
  }

  Future<bool?> check() async{
    final pref = await AppSharedPreference();

    bool? isFirstTime = await pref.read("isFirstTime");

    if(isFirstTime != null)
      {
          if(isFirstTime)
            {
              Get.offAndToNamed('/auth');
            }
          else
            {
              Get.offAndToNamed('/first');
            }
      }
    else
      {
        Get.offAndToNamed('/first');
      }
  }
}
