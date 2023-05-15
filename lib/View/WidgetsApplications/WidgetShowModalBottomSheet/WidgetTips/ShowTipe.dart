import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowTip {
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
                    Text('نصائح',
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
                    child: Container(
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
                            Text(
                              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس ',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorUtils.l273262,
                                fontFamily: ConstVariable.FontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
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
