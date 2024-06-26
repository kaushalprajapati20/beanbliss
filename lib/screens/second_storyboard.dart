import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_colors.dart';
import '../utils/theme_check.dart';


class SecondStoryBoard extends StatelessWidget {
  const SecondStoryBoard({super.key});

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
              Get.toNamed('/third');
            }, child: Text('Skip',style: TextStyle(color:themeMode ?  AppColors.light : AppColors.darkBlack,fontSize: 18),))),
            SizedBox(
              height: 30,
            ),
            Align(alignment:Alignment.topLeft,child: Image.asset('assets/om.png',)),
            Center(child: themeMode ?  Image.asset('assets/storyboard_second_dark.png') :  Image.asset('assets/storyboard_second_light.png',)),
            SizedBox(
              height: 30,
            ),
            Text("Coffee plus special snack with \naffordable price",style: TextStyle(fontSize: 20,color: themeMode ? AppColors.textPrimaryColorForLight : AppColors.textPrimaryColorForDark ),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            Text("Buy at a very affordable price and directly\ndelivered to your home.",style: TextStyle(fontSize: 16,color: AppColors.textSecondaryColor ),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/leave_frame2.png'),
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
                Get.toNamed('/third');
              },
            )
          ],
        ),
      ),
    );
  }
}
