import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  int selectedIndex;
  Color? backgroundColor;
  Function onItemTapped;

  CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21.w, right: 21.w, bottom: 21.h),
      width: 333.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              onItemTapped(0);
            },
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration:  selectedIndex == 0
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.red)
                  : const BoxDecoration(),
              child: Icon(
                Icons.home_outlined,
                size: 24,
                color:  selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onItemTapped(1);
            },
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration:  selectedIndex == 1
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.red)
                  : const BoxDecoration(),
              child: Icon(
                Icons.language,
                size: 24,
                color:  selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onItemTapped(2);
            },
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration:  selectedIndex == 2
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.red)
                  : const BoxDecoration(),
              child: Icon(
                Icons.message_outlined,
                size: 24,
                color:  selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onItemTapped(3);
            },
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration:  selectedIndex == 3
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.red)
                  : const BoxDecoration(),
              child: Icon(
                Icons.person_2_outlined,
                size: 24,
                color:  selectedIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
