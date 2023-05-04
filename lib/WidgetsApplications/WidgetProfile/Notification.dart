import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
          title: Text('الاشعارات',
              style: TextStyle(
                  fontFamily: ConstVariable.FontFamily,
                  fontWeight: FontWeight.w700,
                  color: ColorUtils.l273262,
                  fontSize: 20.sp)),
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
        body: ListView.separated(itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 24.sm,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  width: 262.w,
                  height: 55.h,
                  padding: EdgeInsets.only(top: 5.h),
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    '202020'*14,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
            separatorBuilder: (context, index) => Divider(), itemCount: 15)
        ),
    );
  }
}
