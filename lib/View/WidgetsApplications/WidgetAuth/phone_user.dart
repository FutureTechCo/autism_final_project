import 'dart:developer';

import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';

class PhoneUser extends StatelessWidget {
  const PhoneUser({Key? key}) : super(key: key);

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
              Row(
                children: [
                  SizedBox(
                    width: 13.w,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_right_alt)),
                  Spacer(flex: 4),
                  Text('اضافة رقم جوال',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp)),
                  Spacer(flex: 4),
                ],
              ),
              SizedBox(
                height: 24 * 2.h,
              ),
              Image.asset(
                'images/phone.png',
                width: 221.w,
                height: 221.h,
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                child: MaterialButton(
                  child: Text(
                    'الرجاء ادخال رقم الهاتف لمزيد من المعلومات',
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.w400,
                        color: ColorUtils.colorBlack,
                        fontSize: 14.sp),
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 300.w,
                height: 55.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    border:
                        Border.all(color: ColorUtils.BorderColor, width: 2.w)),
                child: Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'البريد الالكتروني',
                              hintStyle: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp)),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'تأكيد',
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
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, routapp.StartedScreen);
                },
                child: Text(
                  'تخطي',
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.colorBlack,
                      fontSize: 14.sp),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorUtils.colorTrans,
                    elevation: 0,
                    minimumSize: Size(225.w, 50.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
