import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageUser extends StatelessWidget {
  const ImageUser({Key? key}) : super(key: key);

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
                  Text('إضافة صورة',
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
                'assets/image.png',
                width: 180.w,
                height: 180.h,
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                child: MaterialButton(
                  child: Text(
                    'اضافة صورة',
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
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 238.h,
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
                     Navigator.pushNamed(context,routapp.PhoneUserScreen);
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
                     foregroundColor: ColorUtils.colorTrans,
                     elevation: 0,
                     shadowColor: ColorUtils.colorTrans,
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
