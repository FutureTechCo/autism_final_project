import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../View/Utils/ColorApp.dart';
import '../../../View/Utils/const.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
            automaticallyImplyLeading: false,
            title: Text('البحث',
                style: TextStyle(
                    fontFamily: ConstVariable.FontFamily,
                    fontWeight: FontWeight.w700,
                    color: ColorUtils.l273262,
                    fontSize: 20.sp)),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_right_alt,
                  color: ColorUtils.l273262,
                )),
            centerTitle: true,
          ),
          body: Padding(
            padding:   EdgeInsets.symmetric(horizontal:24.h),
            child: Column(
              children: [
                SizedBox(width: double.infinity,),
                Container(
                  width: 300.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      border:
                          Border.all(color: ColorUtils.BorderColor, width: 2.w)),
                  child: Column(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'بحث ...',
                                hintStyle: TextStyle(
                                    fontFamily: ConstVariable.FontFamily,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp)),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
