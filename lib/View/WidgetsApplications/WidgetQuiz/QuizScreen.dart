import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

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
          title: Text('من عمر 8 أشهر- سنتين',
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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 18.r,
                  child: Text('1',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.whiteColor,
                          fontSize: 18.sp)),
                ),
                SizedBox(
                    width: 37.h,
                    child: Divider(
                      color: ColorUtils.l273262,
                      thickness: 1,
                      indent: 4,
                      endIndent: 4,
                    )),
                CircleAvatar(
                  radius: 18.r,
                  backgroundColor: ColorUtils.whiteColor,

                  child: Text('2',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.l273262,
                          fontSize: 18.sp)),
                ),
                SizedBox(
                    width: 37.h,
                    child: Divider(
                      color: ColorUtils.l273262,
                      thickness: 1,
                      indent: 4,
                      endIndent: 4,
                    )),
                CircleAvatar(
                  radius: 18.r,
                  backgroundColor: ColorUtils.whiteColor,
                  child: Text('3',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.l273262,
                          fontSize: 18.sp)),
                ),
                SizedBox(
                    width: 37.h,
                    child: Divider(
                      color: ColorUtils.l273262,
                      thickness: 1,
                      indent: 4,
                      endIndent: 4,
                    )),
                CircleAvatar(
                  radius: 18.r,
                  backgroundColor: ColorUtils.whiteColor,
                  child: Text('4',
                      style: TextStyle(
                          fontFamily: ConstVariable.FontFamily,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.l273262,
                          fontSize: 18.sp)),
                )
              ],
            ),
            SizedBox(height: 10.h,),
            Expanded(child: ListView.separated(itemBuilder: (context, index) => Padding(
              padding:   EdgeInsets.symmetric(horizontal: 24.h),
              child: Container(
                width: 327.w,
                height: 298.h,
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
                  padding:  EdgeInsets.all(16.h),
                  child: Column(
                    children: [
                      Text('هذا النص هو مثال لنص يمكن أن يستبدل '*3,
                          style: TextStyle(
                              fontFamily: ConstVariable.FontFamily,
                              fontWeight: FontWeight.w600,
                              color: ColorUtils.l273262,
                              fontSize: 16.sp)),
                      Container(
                        alignment: Alignment.centerRight,
                        child: RadioMenuButton(value: true, groupValue: "groub 1", onChanged: (value){}, child: Text(
                          'هذا النص هو مثال لنص',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 16.sp),
                        ),),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: RadioMenuButton(value: true, groupValue: "groub 1", onChanged: (value){}, child: Text(
                          'هذا النص هو مثال لنص',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 16.sp),
                        ),),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: RadioMenuButton(value: true, groupValue: "groub 1", onChanged: (value){}, child: Text(
                          'هذا النص هو مثال لنص',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 16.sp),
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
                separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                itemCount: 5)),
            SizedBox(height: 16.h,),
            Container(
              alignment: Alignment.center,
              child:   ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => QuizScreen(),));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r))),
                  backgroundColor:
                  MaterialStateProperty.all(Color(0xffFF657F)),
                  fixedSize: MaterialStateProperty.all(Size(225.w, 50.h)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 18.sp, fontWeight: FontWeight.bold)),
                ),
                child: Text("التالي",
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp)),
              ),
            ),
            SizedBox(height: 16.h,),
          ],
        ),
      ),
    );
  }
}
