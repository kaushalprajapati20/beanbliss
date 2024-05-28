import 'package:coffee_app/screens/first_storyboard.dart';
import 'package:coffee_app/screens/login_screen.dart';
import 'package:coffee_app/screens/second_storyboard.dart';
import 'package:coffee_app/screens/signup_screen.dart';
import 'package:coffee_app/screens/splash_screen.dart';
import 'package:coffee_app/screens/third_storyboard.dart';
import 'package:coffee_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/first', page: () => FirstStoryBoard(),transition: Transition.rightToLeftWithFade,transitionDuration: Duration(milliseconds: 900)),
        GetPage(name: '/second', page: () => SecondStoryBoard(),transition: Transition.rightToLeftWithFade,transitionDuration: Duration(milliseconds: 900)),
        GetPage(name: '/third', page: () => ThirdStoryBoard(),transition: Transition.rightToLeftWithFade,transitionDuration: Duration(milliseconds: 900)),
        GetPage(name: '/auth', page: () => LoginScreen(),transition: Transition.rightToLeftWithFade,transitionDuration: Duration(milliseconds: 900)),
        GetPage(name: '/signup', page: () => SignUpScreen(),transition: Transition.rightToLeftWithFade,transitionDuration: Duration(milliseconds: 900)),
      ],
    );
  }
}
