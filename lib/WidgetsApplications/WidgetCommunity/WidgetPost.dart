import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class PostWidget extends StatelessWidget {
    PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: const [
            BoxShadow(
                color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 6)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.h),
        child: Column(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                title: Text(
                  'تاريخ النشر   26/4/2023',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: ColorUtils.l273262,
                    fontFamily: ConstVariable.FontFamily,
                  ),
                ),
                subtitle:BnScreen.to.selectIndex == 3?null:Text(
                  'قبل ساعتين',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorUtils.l273262,
                    fontFamily: ConstVariable.FontFamily,
                  ),
                ),
                leading: BnScreen.to.selectIndex == 3?null:CircleAvatar(
                  radius: 22.r,
                  foregroundImage: AssetImage('assets/face.png'),
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(
                    BnScreen.to.selectIndex != 3? Icons.bookmark_outline:Icons.more_horiz
                )),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس ',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: ColorUtils.l273262,
                fontFamily: ConstVariable.FontFamily,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.grey,
                    ),
                    label: Text(
                      '230',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: ConstVariable.FontFamily,
                          fontSize: 13.sp),
                    )),
                Spacer(),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    label: Text(
                      '230',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: ConstVariable.FontFamily,
                          fontSize: 13.sp),
                    )),
                TextButton.icon(
                    onPressed: () {
                      show(context);
                    },
                    icon: Icon(
                      Icons.add_comment_outlined,
                      color: Colors.grey,
                    ),
                    label: Text(
                      '230',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: ConstVariable.FontFamily,
                          fontSize: 13.sp),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'المجتمع',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.l273262,
                        fontFamily: ConstVariable.FontFamily,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: ColorUtils.l273262,
                        size: 24.spMin,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Container(
                     width: 327.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6)
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      child: Column(
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: ListTile(
                              title: Text(
                                'محمد المبحوح',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: ColorUtils.l273262,
                                  fontFamily: ConstVariable.FontFamily,
                                ),
                              ),
                              subtitle: Text(
                                'قبل ساعتين',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ColorUtils.l273262,
                                  fontFamily: ConstVariable.FontFamily,
                                ),
                              ),
                              leading: CircleAvatar(
                                radius: 22.r,
                                foregroundImage: AssetImage('assets/face.png'),
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.bookmark_outline)),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس هذا النص هو مثال لنص يمكن أن يستبدل في نفس ',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorUtils.l273262,
                              fontFamily: ConstVariable.FontFamily,
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    '230',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: ConstVariable.FontFamily,
                                        fontSize: 13.sp),
                                  )),
                              Spacer(),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    '230',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: ConstVariable.FontFamily,
                                        fontSize: 13.sp),
                                  )),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_comment_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    '230',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: ConstVariable.FontFamily,
                                        fontSize: 13.sp),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 300.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(16.r),
                                          bottomRight: Radius.circular(16.r),
                                          topLeft: Radius.circular(16.r),
                                          topRight: Radius.zero),
                                      border: Border.all(
                                          color: ColorUtils.BorderColor,
                                          width: 2.w)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 12.h, top: 13.h),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: TextField(
                                            style: TextStyle(
                                                fontFamily:
                                                    ConstVariable.FontFamily,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14.sp),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'اكتب تعليق....',
                                                hintStyle: TextStyle(
                                                    fontFamily:
                                                        ConstVariable.FontFamily,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp)),
                                          ),
                                        )),
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
                                foregroundImage: AssetImage('assets/face.png'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'ارسال',
                                  style: TextStyle(
                                      fontFamily: ConstVariable.FontFamily,
                                      fontWeight: FontWeight.w700,
                                      color: ColorUtils.whiteColor,
                                      fontSize: 14.sp),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorUtils.FF657F,
                                    minimumSize: Size(92.w, 35.h),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.r))),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '(230)التعليقات',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: ColorUtils.l273262,
                                  fontFamily: ConstVariable.FontFamily,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          for(int i = 0; i < 22 ; i++)
                            Padding(
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
                                              bottomRight: Radius.circular(16.r),
                                              topLeft: Radius.circular(16.r),
                                              topRight: Radius.zero),
                                          border: Border.all(
                                              color: ColorUtils.BorderColor,
                                              width: 2.w)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'محمد المبحوح',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: ColorUtils.l273262,
                                                fontFamily: ConstVariable.FontFamily,
                                              ),
                                            ),
                                            Text(
                                              'هذا النص هو مثال لنص يمكن أن يستبدل في هذا النص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أالنص هو مثال لنص يمكن أن يستبدل في',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: ColorUtils.l273262,
                                                fontFamily: ConstVariable.FontFamily,
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
                                    foregroundImage: AssetImage('assets/face.png'),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h)
              ],
            ),
          ),
        );
      },
    );
  }
}
