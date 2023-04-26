import 'package:autism_final_project/Utils/ColorApp.dart';
import 'package:autism_final_project/Utils/const.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetCommunity/WidgetPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 24.h),
        child: Column(
          children: [
            Text(
              'المجتمع',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: ColorUtils.l273262,
                fontFamily: ConstVariable.FontFamily,
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300.w,
                     decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(
                            color: ColorUtils.BorderColor, width: 2.w)),
                    child: Stack(
                      children: [
                        Padding(
                          padding:   EdgeInsets.only(right: 10.h),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                          style: TextStyle(
                              fontFamily: ConstVariable.FontFamily,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'بحث',
                              hintStyle: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10.h,
                          bottom:11.h,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  color: ColorUtils.FF657F,
                                  borderRadius: BorderRadius.circular(90.r)),
                              child: Icon(
                                Icons.search,
                                size: 24.w,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  mini: true,
                  backgroundColor: ColorUtils.flatButtom,
                )
              ],
            ),
            SizedBox(height: 24.h),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => PostWidget(),
                    separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                    itemCount: 21))
          ],
        ),
      ),
    );
  }
}
