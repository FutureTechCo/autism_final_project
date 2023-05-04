import 'package:autism_final_project/WidgetsApplications/WidgetCommunity/WidgetPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class MyPostScreen extends StatelessWidget {
  const MyPostScreen({Key? key}) : super(key: key);

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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
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
                    Text('منشوراتك',
                        style: TextStyle(
                            fontFamily: ConstVariable.FontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp)),
                    Spacer(flex: 4),
                    Text('(3)',
                        style: TextStyle(
                            fontFamily: ConstVariable.FontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp)),
                    SizedBox(
                      width: 13.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Expanded(
                    child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return PostWidget(
                      mypost: true,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
