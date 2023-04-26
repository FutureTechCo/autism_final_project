import 'package:autism_final_project/Custom/CustomDoctorCard.dart';
import 'package:autism_final_project/Utils/ColorApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/const.dart';

class DoctorsScreen extends StatelessWidget {
  DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backGround,
      appBar: AppBar(
        backgroundColor: ColorUtils.colorTrans,
        automaticallyImplyLeading: false,
        elevation: 0,
         leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.search,
            size: 24.w,
            color: Colors.blue,
          ),
        ),
        actions: [
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
            width: 24.w,
          ),
        ],
        centerTitle: true,
        title: Text(
          'الاطباء',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: ColorUtils.l273262,
            fontFamily: ConstVariable.FontFamily,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Column(
          children: [
            Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل  \nفي نفس المساحة ، لقد تم توليد هذا النصمن \nمولد النص العربى',
                style: TextStyle(
                  fontFamily: ConstVariable.FontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
                textAlign: TextAlign.center),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 100 / 152,
                    crossAxisSpacing: 16.h),
                itemBuilder: (context, index) {
                  return CustomDoctorCard(
                      image: 'assets/doctor.png',
                      name: 'د. محمد المبحوح',
                      location: 'غزة-بيرالنعجة');
                },
                itemCount: 21,
              ),
            )
          ],
        ),
      ),
    );
  }
}
