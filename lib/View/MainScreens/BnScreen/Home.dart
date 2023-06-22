import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/View/CustomWidgets/CustomDoctorCard.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetShowModalBottomSheet/WidgetTest/TestResult.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/const.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity.w,
          height: 242.h,
          decoration: BoxDecoration(
              color: ColorUtils.BAE5EF,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.r),
                  bottomRight: Radius.circular(40.r))),
        ),
        Container(
          margin: EdgeInsets.only(left: 21.w, right: 21.w, top: 48.h),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,routapp.SearchScreen);
                        },
                        child: Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Icon(
                            Icons.search,
                            size: 24.w,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                       onTap: (){
                         Navigator.pushNamed(context,routapp.NotificationScreen);
                       },
                        child: Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Icon(
                            Icons.notifications_none,
                            size: 24.w,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'مرحبا محمد المبحوح',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: ConstVariable.FontFamily
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      CircleAvatar(
                        radius: 22.r,
                        foregroundImage: AssetImage('images/face.png'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 214.h,
                width: 327.w,
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 14.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Image.asset(
                      'images/home1.png',
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
                        GetxBnScreen.to.SetSelectIndex(2);
                        // TestResult.show(context);
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
                      child: Text("فحص الطفل",
                          style: TextStyle(
                              fontFamily: ConstVariable.FontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,routapp.ServiceScreen);
                          },
                          child: Text('مشاهدة الكل')),
                      Text(
                        'الخدمات',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,routapp.TipsScreen);
                        },
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6)
                              ]),
                          padding: EdgeInsets.only(top: 10.h),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                height: 60.h,
                                width: 60.w,
                                child: Image.asset('images/discussion.png'),
                              ),
                              SizedBox(height: 5.h),
                              SizedBox(
                                height: 19.h,
                                child: Text('نصائح',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6)
                            ]),
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              height: 60.h,
                              width: 60.w,
                              child: Image.asset('images/test.png'),
                            ),
                            SizedBox(height: 5.h),
                            SizedBox(
                              height: 19.h,
                              child: Text('اختبارات',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, routapp.VideoLevelScreen);
                        },
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6)
                              ]),
                          padding: EdgeInsets.only(top: 10.h),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                height: 60.h,
                                width: 60.w,
                                child: Image.asset('images/media.png'),
                              ),
                              SizedBox(height: 5.h),
                              SizedBox(
                                height: 19.h,
                                child: Text('فيديوهات تعليمية',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,routapp.DoctorsScreen);
                          },
                          child: Text('مشاهدة الكل')),
                      Text(
                        'افضل الاطباء',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomDoctorCard(
                          image: 'images/doctor.png',
                          name: 'د. محمد المبحوح',
                          location: 'غزة-بيرالنعجة'),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomDoctorCard(
                          image: 'images/doctor.png',
                          name: 'د. محمد المبحوح',
                          location: 'غزة-بيرالنعجة'),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomDoctorCard(
                          image: 'images/doctor.png',
                          name: 'د. محمد المبحوح',
                          location: 'غزة-بيرالنعجة'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
