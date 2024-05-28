import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_colors.dart';
import '../utils/theme_check.dart';


class ThirdStoryBoard extends StatelessWidget {
  const ThirdStoryBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = ThemeCheckFunctions.isDarkMode(context);

    return Scaffold(

      body: Container(
        color: themeMode ?  AppColors.dark : AppColors.light,

        child: Column(

          children: [
            SizedBox(
              height: 80,
            ),
            Align(alignment:Alignment.topRight,child: TextButton(onPressed: (){
              Get.toNamed('/auth');
            }, child: Text('Skip',style: TextStyle(color:themeMode ?  AppColors.light : AppColors.darkBlack,fontSize: 18),))),
            SizedBox(
              height: 30,
            ),
            Align(alignment:Alignment.topLeft,child: Image.asset('assets/om.png',)),
            Center(child: themeMode ?  Image.asset('assets/storyboard_third_dark.png') :  Image.asset('assets/storyboard_third_light.png',)),
            SizedBox(
              height: 30,
            ),
            Text("Mixing very professional \n compared to others",style: TextStyle(fontSize: 20,color: themeMode ? AppColors.textPrimaryColorForLight : AppColors.textPrimaryColorForDark ),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            Text("We are very professional at marking a \ncoffee for you",style: TextStyle(fontSize: 16,color: AppColors.textSecondaryColor ),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/leave_frame_3.png'),
            SizedBox(
              height: 20,
            ),
            Align(alignment:Alignment.bottomRight,child: Image.asset('assets/leaves.png')),
            Spacer(),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                width: MediaQuery.of(context).size.width/1.5,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.ButtonColor
                ),
                child: Center(child: Text('Next',style: TextStyle(color: AppColors.textPrimaryColorForLight),)),),
              onTap: (){
                Get.toNamed('/auth');
              },
            )
          ],
        ),
      ),
    );
  }
}
