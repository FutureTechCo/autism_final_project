import 'package:autism_final_project/View/Utils/const.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetQuiz/QuizScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomRight,
            colors: [ColorUtils.BAE5EF, ColorUtils.FF657F_lite]),
      ),
      padding: EdgeInsets.only(top: 48.h, right: 21.w, left: 21.w),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "فحص الطفل",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 19.h,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            child: Text(
              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى",
              style: TextStyle(fontSize: 14.sp),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "اختيار الفئة العمرية للطفل:",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: RadioMenuButton(value: true, groupValue: "groub 1", onChanged: (value){}, child: Text(
              "من عمر 8 أشهر- سنتين",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 16.sp),
            ),),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: RadioMenuButton(value: true, groupValue: "groub 1", onChanged: (value){}, child: Text(
              "من عمر 8 أشهر- سنتين",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 16.sp),
            ),),
          ),
          SizedBox(
            height: 105.h,
          ),
          Container(
            alignment: Alignment.center,
            child:   ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => QuizScreen(),));
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r))),
                backgroundColor:
                MaterialStateProperty.all(Color(0xffFF657F)),
                fixedSize: MaterialStateProperty.all(Size(225.w, 50.h)),
                textStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 18.sp, fontWeight: FontWeight.bold)),
              ),
              child: Text("التالي",
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp)),
            ),
          )
        ],
      ),
    );
  }
}
