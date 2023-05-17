import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: 37.h),
          child: ListView(
            children: [
              Image.asset(
                'images/logo.png',
                height: 155.h,
                width: 82.w,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                  'مرحبًا بك مرة أخرى ، قم بتسجيل'
                  '\n الدخول للمتابعة مع'
                  ' \nتطبيق آفاق',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp)),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 300.w,
                height: 115.h,
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
                    Divider(
                      color: ColorUtils.BorderColor,
                      endIndent: 24.w,
                      indent: 24.w,
                      thickness: 2.w,
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'كلمة السر',
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
                height: 6.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: MaterialButton(
                  child: Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.w400,
                        color: ColorUtils.colorBlack,
                        fontSize: 14.sp),
                  ),
                  shape: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorUtils.colorBlack,
                    ),
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pushNamed(context, routapp.ResetPasswordScreen );
                  },
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, routapp.MainScreen);
                },
                child: Text(
                  'دخول',
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
                height: 120.h,
              ),
              Text('ليس لدي حساب؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.colorBlack54,
                      fontSize: 14.sp)),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, routapp.SignUpScreen);
                },
                child: Text('تسجيل',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.w700,
                        color: ColorUtils.colorBlack,
                        fontSize: 14.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
