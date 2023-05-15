import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetChat/ChatScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrDoctorScreen extends StatelessWidget {
  const DrDoctorScreen({Key? key}) : super(key: key);

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
          title: Text('صفحة الطبيب',
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
          padding:  EdgeInsets.symmetric(horizontal: 24.h),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity,),
              Container(
                width: 298.w,
                height: 180.h,
                 child: Row(
                  children: [
                    Container(
                      width: 125.w,
                      height: double.infinity.h,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Image.asset(
                        'assets/face.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Column(
                        children: [
                          Text('د.محمد المبحوح',
                              style: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w700,
                                  color: ColorUtils.l273262,
                                  fontSize: 22.sp)),
                          Text('تخصص علاج التوحد',
                              style: TextStyle(
                                  fontFamily: ConstVariable.FontFamily,
                                  fontWeight: FontWeight.w400,
                                  color: ColorUtils.l273262,
                                  fontSize: 16.sp)),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(40.w,40.h)
                                ),
                                child: Image.asset('assets/emil.png')),
                            SizedBox(width: 16.w,),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(40.w,40.h)
                                ),
                                child: Image.asset('assets/call.png'))
                          ],),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen(),));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: Size(137.w,35.h)
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/chat.png'),
                                  SizedBox(width: 8.w,),
                                  Text('دردشة مع الدكتور',
                                      style: TextStyle(
                                          fontFamily: ConstVariable.FontFamily,
                                          fontWeight: FontWeight.w400,
                                          color: ColorUtils.l273262,
                                          fontSize: 12.sp)),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 29.h,),
              Text('عن الطبيب',
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 22.sp)),
              SizedBox(height: 12.h,),
              Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة'*4,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 14.sp)),
              SizedBox(height: 16.h,),
              Text('عنوان الطبيب',
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 22.sp)),
              SizedBox(height: 12.h,),
              Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة'*2,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 14.sp)),
              SizedBox(height: 16.h,),
              Text('مواعيد الطبيب',
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 22.sp)),
              SizedBox(height: 12.h,),
              Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة'*2,
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 14.sp)),
            ],
          ),
        ),
      ),
    );
  }
}
