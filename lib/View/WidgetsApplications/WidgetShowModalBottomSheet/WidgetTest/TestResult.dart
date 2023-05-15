import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestResult {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorUtils.l273262,
                        size: 24.spMin,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Spacer(),
                    Text('نتيجة الفحص',
                        style: TextStyle(
                            fontFamily: ConstVariable.FontFamily,
                            fontWeight: FontWeight.w700,
                            color: ColorUtils.l273262,
                            fontSize: 18.sp)),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 24.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      children: [
                        Container(
                          width: 327.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 10.h),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/home1.png',
                                  width: 56.w,
                                  height: 64.h,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: ConstVariable.FontFamily,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                   },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.r))),
                                    backgroundColor:
                                    MaterialStateProperty.all(Color(0xffFF657F)),
                                    fixedSize: MaterialStateProperty.all(Size(247.w, 50.h)),
                                    textStyle: MaterialStateProperty.all(TextStyle(
                                        fontSize: 18.sp, fontWeight: FontWeight.bold)),
                                  ),
                                  child: Text("80%",
                                      style: TextStyle(
                                          fontFamily: ConstVariable.FontFamily,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: ConstVariable.FontFamily,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h)
              ],
            ),
          ),
        );
      },
    );
  }
}
