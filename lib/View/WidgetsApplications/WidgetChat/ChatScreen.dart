import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('دردشة',
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
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                return Directionality(
                  textDirection: index % 2 != 0? TextDirection.ltr:TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 250.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.r),
                                    bottomRight:
                                    Radius.circular(16.r),
                                    topLeft: Radius.circular(16.r),
                                    topRight: Radius.zero),
                                border: Border.all(
                                    color: ColorUtils.BorderColor,
                                    width: 2.w)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'محمد المبحوح',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: ColorUtils.l273262,
                                      fontFamily:
                                      ConstVariable.FontFamily,
                                    ),
                                  ),
                                  Text(
                                    'هذا النص هو مثال لنص يمكن أن يستبدل في هذا النص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أن يستبدل في',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorUtils.l273262,
                                      fontFamily:
                                      ConstVariable.FontFamily,
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                          radius: 22.r,
                          foregroundImage:
                          AssetImage('assets/face.png'),
                        ),
                      ],
                    ),
                  ),
                );
              }, separatorBuilder: (context, index) => SizedBox(height: 24.h,), itemCount: 25),
            ),
            Container(
              width: double.infinity.w,
              height: 72.h,
              child: Column(
                children: [
                  Divider(thickness: 2,),
                  Row(children: [
                    CircleAvatar(
                      radius: 22.r,
                      foregroundImage:
                      AssetImage('assets/face.png'),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 300.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(16.r),
                            bottomLeft: Radius.circular(16.r),
                            topLeft: Radius.circular(16.r),
                            topRight: Radius.circular(0.r),
                          ),
                          border:
                          Border.all(color: ColorUtils.BorderColor, width: 2.w)),
                      child: Column(
                        children: [
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'بحث ...',
                                        hintStyle: TextStyle(
                                            fontFamily: ConstVariable.FontFamily,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp)),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
