import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetShowModalBottomSheet/WidgetTips/ShowTipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

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
          title: Text('نصائح',
              style: TextStyle(
                  fontFamily: ConstVariable.FontFamily,
                  fontWeight: FontWeight.w700,
                  color: ColorUtils.l273262,
                  fontSize: 18.sp)),
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
          padding:EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              Row(
                children: [
                  Text('هذا النص هو مثال لنص يمكن أن يستبدل',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.l273262,
                          fontSize: 16.sp))
                ],
              ),
              SizedBox(height: 20.h,),
              for (int i = 0; i < 3; i++)
                InkWell(
                  onTap: (){
                    ShowTip.show(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Container(
                      width: 327.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('هذا النص هو مثال لنص يمكن أن يستبدل',
                              style: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w700,
                                  color: ColorUtils.l273262,
                                  fontSize: 12.sp)),
                          Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90.r),
                                color: ColorUtils.FF657F),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 12.spMin,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
             ,SizedBox(height: 16.h,),
              Row(
                children: [
                  Text('هذا النص هو مثال لنص يمكن أن يستبدل',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.l273262,
                          fontSize: 16.sp))
                ],
              ),
              SizedBox(height: 20.h,),
              for (int i = 0; i < 3; i++)
                InkWell(
                  onTap: (){
                    ShowTip.show(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Container(
                      width: 327.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('هذا النص هو مثال لنص يمكن أن يستبدل',
                              style: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w700,
                                  color: ColorUtils.l273262,
                                  fontSize: 12.sp)),
                          Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90.r),
                                color: ColorUtils.FF657F),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 12.spMin,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ,SizedBox(height: 16.h,),
              Row(
                children: [
                  Text('هذا النص هو مثال لنص يمكن أن يستبدل',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.l273262,
                          fontSize: 16.sp))
                ],
              ),
              SizedBox(height: 20.h,),
              for (int i = 0; i < 3; i++)
                InkWell(
                  onTap: (){
                    ShowTip.show(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Container(
                      width: 327.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('هذا النص هو مثال لنص يمكن أن يستبدل',
                              style: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w700,
                                  color: ColorUtils.l273262,
                                  fontSize: 12.sp)),
                          Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90.r),
                                color: ColorUtils.FF657F),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 12.spMin,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ,SizedBox(height: 16.h,)
            ],
          ),
        ),
      ),
    );
  }
}
