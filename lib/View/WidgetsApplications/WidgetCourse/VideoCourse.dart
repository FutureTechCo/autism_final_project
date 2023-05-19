import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/WatchVideo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class VideoCourse extends StatefulWidget {
  late List<Categories> categories;
  late String name;

  VideoCourse({required this.categories, required this.name});

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
            title: Text(widget.name,
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
            child:Column(
              children: [
                SizedBox(
                  width: double.infinity.w,
                  height: 10.h,
                ),
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
                              border: Border.all(color: ColorUtils.l273262),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff3A7FC4),
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(
                              child: Text(
                                'المحتويات',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  fontFamily: 'Arial',
                                ),
                              )),
                        ),
                        SizedBox(height: 4.h,),
                        for (int j = 0; j < widget.categories.length; j++)
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
                                      widget.categories[j].letter,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ),
                              for (int k = 0;
                              k < widget.categories[j].videos.length;
                              k++)
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => WatchVideo(
                                                object: widget
                                                    .categories[j].videos[k]),
                                          ));
                                    },
                                    child: Container(
                                      height: 44,
                                      width: 57,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xffA6A6A6))),
                                      child: Center(
                                        child: Text(
                                          widget.categories[j].videos[k]
                                              .mission_number,
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
          ))),
    );
  }
}
