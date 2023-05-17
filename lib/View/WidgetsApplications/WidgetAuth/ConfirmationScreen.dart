import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: 28.h,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                'images/success.png',
                height: 235.h,
                width: 156.w,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text('تم تغيير كلمة المرور بنجاح',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp)),
               SizedBox(
                height: 73.h,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(
                  //     context, routapp.LoginScreen);
                  Navigator.pop(context);
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
            ],
          ),
        ),
      ),
    );
  }
}
