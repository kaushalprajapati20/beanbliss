import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_colors.dart';
import '../utils/theme_check.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    final themeMode = ThemeCheckFunctions.isDarkMode(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Container(
            color: themeMode ? AppColors.dark : AppColors.light,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset('assets/login.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 26,
                      color: themeMode
                          ? AppColors.textPrimaryColorForLight
                          : AppColors.textPrimaryColorForDark),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please enter your account here',
                  style: TextStyle(color: AppColors.textSecondaryColor),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20.0, right: 20,bottom: 10),
                  child: Column(
                    children: [
                      Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: validateEmail,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  cursorColor: themeMode
                                      ? AppColors.strokeColorForDark
                                      : AppColors.strokeColorForLight,
                                  controller: emailController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: themeMode
                                                  ? AppColors.strokeColorForDark
                                                  : AppColors.strokeColorForLight)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: themeMode
                                              ? AppColors.strokeColorForDark
                                              : AppColors.strokeColorForLight,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: themeMode
                                              ? AppColors.strokeColorForDark
                                              : AppColors.strokeColorForLight,
                                        ),
                                      ),
                                      hintText: 'Email or Phone number',
                                      prefixIconColor: AppColors.ButtonColor,
                                      prefixIcon: Icon(Icons.email_outlined))),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                validator: validatePassword,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  cursorColor: themeMode
                                      ? AppColors.strokeColorForDark
                                      : AppColors.strokeColorForLight,
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeMode
                                                  ? AppColors.strokeColorForDark
                                                  : AppColors.strokeColorForLight)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: themeMode
                                              ? AppColors.strokeColorForDark
                                              : AppColors.strokeColorForLight,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: themeMode
                                              ? AppColors.strokeColorForDark
                                              : AppColors.strokeColorForLight,
                                        ),
                                      ),
                                      hintText: 'Password',
                                      prefixIconColor: AppColors.ButtonColor,
                                      prefixIcon: Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            obsecure = !obsecure;
                                          });
                                        },
                                        icon: obsecure
                                            ? Icon(
                                                Icons.visibility_off,
                                                color: themeMode
                                                    ? AppColors.textPrimaryColorForLight
                                                    : AppColors.textPrimaryColorForDark,
                                              )
                                            : Icon(
                                                Icons.visibility_outlined,
                                                color: themeMode
                                                    ? AppColors.textPrimaryColorForLight
                                                    : AppColors.textPrimaryColorForDark,
                                              ),
                                      ))),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Align(alignment:Alignment.topRight,child: Text('Forgot Password?',style: TextStyle(color: AppColors.textSecondaryColor),)),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          width: MediaQuery.of(context).size.width/1.5,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.ButtonColor
                          ),
                          child: Center(child: Text('Login',style: TextStyle(color: AppColors.textPrimaryColorForLight),)),),
                        onTap: (){
                          Get.toNamed('/otp');
                        },
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          Text("Don\'t have any account?"),
                          SizedBox(width: 5,),
                          GestureDetector(child: Text("Sign Up",style: TextStyle(color: AppColors.ButtonColor),),onTap: (){
                            Get.toNamed('/signup');
                          },)

                          
                        ],
                      )
                    ],
                  ),
                ),
          
              ],
            ),
          ),
        ),
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Email is Required";
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Password is Required";
    } else {
      return null;
    }
  }

  _continueValidation() {
    FocusManager.instance.primaryFocus!.unfocus();
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

    } else {}
  }
}
