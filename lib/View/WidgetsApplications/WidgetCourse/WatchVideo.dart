import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class WatchVideo extends StatelessWidget {
  const WatchVideo({Key? key}) : super(key: key);

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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:  Text(
            'A1-1',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color:  ColorUtils.l273262,
              fontFamily: ConstVariable.FontFamily,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Color(0xff003298))),
        ),
        body: Padding(
          padding:   EdgeInsets.symmetric(vertical: 8.h,horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('A1:'+' لشئ مفضل أو مكافأة عندما يقدمها الراشد',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color:ColorUtils.l273262,
                  fontFamily: ConstVariable.FontFamily,
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                height: 156.h,
                width: 328.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'الهدف :',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color:  ColorUtils.l273262,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                   'في 3 ثواني مكافأة يقدمها الشخص البالغ في 5 من 5 مناسبات',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'النتيجة :',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color:  ColorUtils.l273262,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                   'يمنحة الراشد المكافأة',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'الجواب :',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color:  ColorUtils.l273262,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                     'للمكافأة في 3 ثواني',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}