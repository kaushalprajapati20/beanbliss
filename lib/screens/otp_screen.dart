import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../utils/app_colors.dart';
import '../utils/theme_check.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController controller = TextEditingController(text: "");
  String thisText = "";
  int pinLength = 4;
  bool hasError = false;
  double radius = 70.0;

  @override
  Widget build(BuildContext context) {
    final themeMode = ThemeCheckFunctions.isDarkMode(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: themeMode ? AppColors.dark : AppColors.light,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                themeMode
                    ? Image.asset('assets/otp_dark.png')
                    : Image.asset('assets/otp_light.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Check your email',
                  style: TextStyle(
                      color: themeMode
                          ? AppColors.textPrimaryColorForLight
                          : AppColors.textPrimaryColorForDark),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We sent the code to your email',
                  style: TextStyle(color: AppColors.textSecondaryColor),
                ),
                SizedBox(
                  height: 30,
                ),
                PinCodeTextField(
                  pinBoxColor: themeMode ? AppColors.dark : AppColors.light,
                  autofocus: false,
                  controller: controller,
                  highlightColor: Colors.blue,
                  defaultBorderColor: themeMode
                      ? AppColors.pinCodeColorForLight
                      : AppColors.pinCodeColorForDark,
                  hasTextBorderColor: AppColors.ButtonColor,
                  maxLength: pinLength,
                  onTextChanged: (text) {
                    setState(() {
                      hasError = false;
                    });
                  },
                  onDone: (text) {
                    print("DONE $text");
                    print("DONE CONTROLLER ${controller.text}");
                  },
                  pinBoxWidth: 60,
                  pinBoxHeight: 60,
                  wrapAlignment: WrapAlignment.spaceAround,
                  pinBoxRadius: radius,
                  pinTextStyle: TextStyle(
                      fontSize: 16.0,
                      color: themeMode
                          ? AppColors.pinCodeColorForLight
                          : AppColors.pinCodeColorForDark),
                  pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                  highlightAnimationBeginColor: Colors.black,
                  highlightAnimationEndColor: Colors.white12,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.ButtonColor),
                    child: Center(
                        child: Text(
                      'Verify',
                      style:
                          TextStyle(color: AppColors.textPrimaryColorForLight),
                    )),
                  ),
                  onTap: () {
                    Get.toNamed('/dashboard');
                  },
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
