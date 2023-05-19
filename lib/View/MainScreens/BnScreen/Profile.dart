import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetProfile/Edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  List<String> title = [
    'التقيمات',
    'منشوراتك',
    'حول التطبيق',
    'مشاركة التطبيق',
    'تقييم التطبيق',
    'التقرير',
    'الدعم الفني',
    'تسجيل الخروج',
  ];

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
                  CircleAvatar(
                    radius: 22.r,
                    foregroundImage: AssetImage('images/face.png'),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    'مرحبا محمد المبحوح',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: ConstVariable.FontFamily),
                  ),
                  Spacer(),
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
                ],
              ),
            ),
          ),
          // Row(
          //   children: [
          //     Text(
          //       '(15)',
          //       style: TextStyle(
          //         fontSize: 16.sp,
          //         fontWeight: FontWeight.bold,
          //         color: ColorUtils.l273262,
          //         fontFamily: ConstVariable.FontFamily,
          //       ),
          //     ),
          //     Spacer(),
          //     Text(
          //       'منشوراتك',
          //       style: TextStyle(
          //         fontSize: 16.sp,
          //         fontWeight: FontWeight.bold,
          //         color: ColorUtils.l273262,
          //         fontFamily: ConstVariable.FontFamily,
          //       ),
          //     )
          //   ],
          // ),
          SizedBox(height: 16.h),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      if(index == 1 || title[index] == 'منشوراتك'){
                        Navigator.pushNamed(context, routapp.MyPostScreen);
                      }else if(index == 5){
                        Navigator.pushNamed(context, routapp.UserReport);
                      }
                    },
                    child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: Container(
                            width: 327.w,
                            height: 60.h,
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
                              padding: EdgeInsets.only(right: 24.h),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  title[index],
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: title.length - 1 == index
                                        ? Colors.red
                                        : ColorUtils.l273262,
                                    fontFamily: ConstVariable.FontFamily,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 16.h,
                      ),
                  itemCount: title.length))
        ],
      ),
    ));
  }
}
