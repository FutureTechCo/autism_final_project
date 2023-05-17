import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePost extends StatelessWidget {
  CreatePost({Key? key}) : super(key: key);
  List<Color> color = const [
    Color(0xff273262),
    Color(0xffBAE5EF),
    Color(0xffFF657F),
    Color(0xffFFFFFF),
  ];

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
        bottomNavigationBar: MaterialButton(
          onPressed: () {},
          color: Colors.white,
          height:54.h,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              topLeft: Radius.circular(8.r),
            ),
            borderSide: BorderSide(

            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('إضافة الي منشورك صورة',
                  style: TextStyle(
                      fontFamily: ConstVariable.FontFamily,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.l273262,
                      fontSize: 14.sp)),
              Icon(Icons.add_photo_alternate_outlined),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: ColorUtils.l273262,
                        )),
                    Text('انشاء منشور',
                        style: TextStyle(
                            fontFamily: ConstVariable.FontFamily,
                            fontWeight: FontWeight.w700,
                            color: ColorUtils.l273262,
                            fontSize: 20.sp)),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorUtils.l273262,
                            minimumSize: Size(65.w, 30.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            )),
                        child: Text('نشر',
                            style: TextStyle(
                                fontFamily: ConstVariable.FontFamily,
                                fontWeight: FontWeight.w700,
                                color: ColorUtils.whiteColor,
                                fontSize: 20.sp)))
                  ],
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22.r,
                          foregroundImage: AssetImage('images/face.png'),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          'مرحبا محمد المبحوح',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: ConstVariable.FontFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 189.h,
                      padding: EdgeInsets.only(right: 8.h, top: 8.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: TextField(
                        maxLines: null,
                        minLines: null,
                        expands: true,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: ConstVariable.FontFamily),
                        decoration: InputDecoration(
                          hintText: 'بما تفكر ...',
                          hintStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: ConstVariable.FontFamily),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...color.map((e) => Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          color: e,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
