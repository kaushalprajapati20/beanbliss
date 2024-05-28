import 'package:flutter/material.dart';

import 'app_colors.dart';
class CircularProgressView extends StatelessWidget {
  const CircularProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x50000000),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.ButtonColor,
        ),
      ),
    );
  }
}