import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpCodeScreen extends StatelessWidget {
  const OtpCodeScreen({Key? key}) : super(key: key);

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 2.h),
          child: ListView(
            children: [
              Row(
                children: [
                  Spacer(flex: 4),
                  Text('رمز التحقق',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp)),
                  Spacer(flex: 4,),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_forward)),
                  Spacer()
                ],
              ),
              Image.asset(
                'assets/otp.png',
                height: 235.h,
                width: 156.w,
              ),
              SizedBox(
                height: 27.h,
              ),
              Text(
                  'ادخل الرمز الذي ارسل الى بريدك الالكتروني',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp)),
              SizedBox(
                height: 33.h,
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
                height: 53.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, routapp.NewPasswordScreen);
                },
                child: Text(
                  'ارسال',
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
            ],
          ),
        ),
      ),
    );
  }
}
