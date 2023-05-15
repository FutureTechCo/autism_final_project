import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/const.dart';

class ServiceScreen extends StatelessWidget {
    ServiceScreen({Key? key}) : super(key: key);
  List iamges = [
    'assets/discussion.png',
    'assets/test.png',
    'assets/media.png'
  ];
  List name = [
    'نصائح',
    'إختبارات',
    'فيديوهات تعليمة'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backGround,
      appBar: AppBar(
        backgroundColor: ColorUtils.colorTrans,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {Navigator.pop(context);},
            child: Icon(
              Icons.arrow_forward,
              color: ColorUtils.l273262,
              size: 24.spMin,
            ),
          ),
          SizedBox(
            width: 24.w,
          ),
        ],
        centerTitle: true,
        title: Text(
          'الخدمات',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: ColorUtils.l273262,
            fontFamily: ConstVariable.FontFamily,
          ),
        ),
      ),
      body: Padding(
        padding:   EdgeInsets.symmetric(horizontal: 19.h),
        child: ListView(
          children: [
            Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل  \nفي نفس المساحة ، لقد تم توليد هذا النصمن \nمولد النص العربى',
                style: TextStyle(
                    fontFamily: ConstVariable.FontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,),textAlign: TextAlign.center),
            SizedBox(height: 24.h,),
            Container(
              height: 350.h,
              width: double.infinity.w,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 105,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 100 / 100,
                    crossAxisSpacing: 16.h),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6)
                        ]),
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          height: 60.h,
                          width: 60.w,
                          child: Image.asset(
                            iamges[index]
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(name[index],
                            style: TextStyle(
                                color: ColorUtils.colorBlack,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: ConstVariable.FontFamily)),
                      ],
                    ),
                  );
                },
                itemCount: name.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
