import 'package:autism_final_project/Custom/CustomDoctorCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21.w, right: 21.w, top: 48.h),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    child: Icon(
                      Icons.search,
                      size: 24.w,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                    child: Icon(
                      Icons.notifications_none,
                      size: 24.w,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'مرحبا محمد المبحوح',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 22.r,
                    foregroundImage: AssetImage('assets/face.png'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 210.h,
            width: 327.w,
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 14.h),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Image.asset('assets/home1.png'),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص',
                  style: TextStyle(fontSize: 14.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r))),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffFF657F)),
                    fixedSize: MaterialStateProperty.all(Size(247.w, 50.h)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.bold)),
                  ),
                  child: const Text("فحص الطفل"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('مشاهدة الكل'),
                  Text(
                    'الخدمات',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 6)
                        ]),
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                          height: 60.h,
                          width: 60.w,
                          child: Image.asset('assets/discussion.png'),
                        ),
                        SizedBox(height: 5.h),
                        SizedBox(
                          height: 19.h,
                          child: Text('نصائح',
                              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 6)
                        ]),
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                          height: 60.h,
                          width: 60.w,
                          child: Image.asset('assets/test.png'),
                        ),
                        SizedBox(height: 5.h),
                        SizedBox(
                          height: 19.h,
                          child: Text('اختبارات',
                              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 6)
                        ]),
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                          height: 60.h,
                          width: 60.w,
                          child: Image.asset('assets/media.png'),
                        ),
                        SizedBox(height: 5.h),
                        SizedBox(
                          height: 19.h,
                          child: Text('فيديوهات تعليمية',
                              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('مشاهدة الكل'),
                  Text(
                    'افضل الاطباء',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDoctorCard(
                      image: 'assets/doctor.png',
                      name: 'د. محمد المبحوح',
                      location: 'غزة-بيرالنعجة'),
                  SizedBox(
                    width: 16.w,
                  ),
                  CustomDoctorCard(
                      image: 'assets/doctor.png',
                      name: 'د. محمد المبحوح',
                      location: 'غزة-بيرالنعجة'),
                  SizedBox(
                    width: 16.w,
                  ),
                  CustomDoctorCard(
                      image: 'assets/doctor.png',
                      name: 'د. محمد المبحوح',
                      location: 'غزة-بيرالنعجة'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
