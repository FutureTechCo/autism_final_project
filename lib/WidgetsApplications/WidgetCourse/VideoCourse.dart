import 'dart:developer';
import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class VideoCourse extends StatefulWidget {
  @override
  State<VideoCourse> createState() => _VideoCourseState();
}

class _VideoCourseState extends State<VideoCourse> {
  PageController pageController = PageController();

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
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('المرحلة الاولى',
                style: TextStyle(
                    fontFamily: ConstVariable.FontFamily,
                    fontWeight: FontWeight.w700,
                    color: ColorUtils.l273262,
                    fontSize: 20.sp)),
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_right_alt,
                  color: ColorUtils.l273262,
                )),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,
                        ),
                        child: Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        '1 / 10',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,
                        ),
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 573.99.h,
                  width: 324.w,
                  child: PageView(
                    clipBehavior: Clip.antiAlias,
                    controller: pageController,
                    onPageChanged: (int selectedPage) {},
                    children: <Widget>[
                      for (int i = 0; i < 10; i++)
                        Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: SizedBox(
                            height: 573.99.h,
                            width: 324.w,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 3.h,
                                ),
                                Container(
                                  height: 41.98.h,
                                  width: 321.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r),
                                        topRight: Radius.circular(10.r),
                                      ),
                                      border: Border.all(
                                          color: Color(0xff3A7FC4)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xff3A7FC4),
                                          spreadRadius: 2,
                                        )
                                      ]),
                                  child: Center(
                                      child: Text(
                                    'A-$i',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                      fontFamily: 'Arial',
                                    ),
                                  )),
                                ),
                                for (int j = 0; j < 10; j++)
                                  Row(
                                    children: [
                                      Container(
                                        height: 44,
                                        width: 57,
                                        decoration: BoxDecoration(
                                            color: Color(0xff3A7FC4),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff7899DC),
                                                spreadRadius: 2,
                                              )
                                            ]),
                                        child: Center(
                                            child: Text(
                                              's - $j',
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                      ),
                                      for (int k = 0; k < 3; k++)
                                        Expanded(
                                          child: InkWell(
                                            onTap: ()  {
                                              Navigator.pushNamed(context, routapp.WatchVideoScreen);
                                            },
                                            child: Container(
                                              height: 44,
                                              width: 57,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xffA6A6A6))),
                                              child: Center(
                                                child: Text(
                                                  'N - ${k + 1}',
                                                  style: TextStyle(
                                                    color: Color(0xffA6A6A6),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  )
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
