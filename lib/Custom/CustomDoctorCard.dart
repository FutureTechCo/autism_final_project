import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDoctorCard extends StatelessWidget {
  String image;
  String name;
  String location;

  CustomDoctorCard({
    super.key,
    required this.image,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: const [
            BoxShadow(
                color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 6)
          ]),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 13.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            height: 79.h,
            width: 73.w,
            child: Image.asset(image),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            height: 20.h,
            child: Text(name,
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 2.h),
          SizedBox(
            height: 17.h,
            child: Text(location, style: TextStyle(fontSize: 9.sp)),
          ),
        ],
      ),
    );
  }
}
