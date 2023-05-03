import 'package:autism_final_project/MainScreens/BnScreen/Edit.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetCommunity/WidgetPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Text(
            'الملف الشخصي',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: ColorUtils.l273262,
              fontFamily: ConstVariable.FontFamily,
            ),
          ),
          SizedBox(height: 41.h),
          Container(
            width: 327.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6)
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Edit(),
                      ));
                    },
                    icon: Icon(
                      Icons.border_color_outlined,
                      weight: 24.spMin,
                      color: Colors.black,
                    ),
                    label: Text(
                      'تعديل',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: ConstVariable.FontFamily),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'مرحبا محمد المبحوح',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: ConstVariable.FontFamily),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 22.r,
                    foregroundImage: AssetImage('assets/face.png'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Text(
                '(15)',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorUtils.l273262,
                  fontFamily: ConstVariable.FontFamily,
                ),
              ),
              Spacer(),
              Text(
                'منشوراتك',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorUtils.l273262,
                  fontFamily: ConstVariable.FontFamily,
                ),
              )
            ],
          ),
          SizedBox(height: 24.h),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => PostWidget(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 16.h,
                      ),
                  itemCount: 21))
        ],
      ),
    ));
  }
}
