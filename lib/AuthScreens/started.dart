import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/ColorApp.dart';
import '../Utils/const.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [ColorUtils.BAE5EF, ColorUtils.FF657F_lite]),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'بدأ',
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.w700,
                        color: ColorUtils.whiteColor,
                        fontSize: 14.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorUtils.FF657F,
                      minimumSize: Size(225.w, 50.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r))),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
