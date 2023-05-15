import 'package:autism_final_project/View/MainScreens/MainScreen.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF7F9),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 13.w,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_right_alt)),
                Spacer(flex: 4),
                Text('تعديل الملف الشخصي',
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp)),
                Spacer(flex: 4),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.only(
                right: 24.w,
                top: 11.h,
                bottom: 10.h,
              ),
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 2 ,color: Colors.black)],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r)),
              height: 101.h,
              child: Row(
                children: [
                  SizedBox(
                      height: 101.h,
                      child: Image.asset(
                        "assets/face.png",
                        fit: BoxFit.fitHeight,
                      )),
                  SizedBox(
                    width: 49.w,
                  ),
                  TextButton(
                    child: Text(
                      "تغيير الصورة",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff273262),
                          decoration: TextDecoration.underline,
                          decorationThickness: 2),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الاسم",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 45.h,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "البريد الاكلتروني",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 45.h,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "كلمة المرور",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 45.h,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "رقم الجوال",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 45.h,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: const BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 65.h,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r))),
                  backgroundColor: MaterialStateProperty.all(Color(0xffFF657F)),
                  fixedSize: MaterialStateProperty.all(Size(225.w, 50.h)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                ),
                child: Text("حفظ التغييرات",
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
