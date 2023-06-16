import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/VideoCourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controller/GetXController/GetX_Videos/GetXHomeUserController.dart';
import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class VideoLevel extends StatelessWidget {
  const VideoLevel({Key? key}) : super(key: key);

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
          title: Text('الفيديوهات',
              style: TextStyle(
                  fontFamily: ConstVariable.FontFamily,
                  fontWeight: FontWeight.w700,
                  color: ColorUtils.l273262,
                  fontSize: 20.sp)),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_right_alt,
                color: ColorUtils.l273262,
              )),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: GetBuilder<GetXHomeUserController>(
          id: 'Levels',
          builder: (controller) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل\n في نفس المساحة، لقد تم توليد هذا النص\n من مولد النص العربى',
                    style: TextStyle(
                        fontFamily: ConstVariable.FontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 24.h,
                ),
                Expanded(
                  child: FutureBuilder<List<levels_model_response>>(
                  future: controller.GetXGetAllLevels(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                      return ListView.separated(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoCourse(
                                        name: controller
                                            .ObjectLevels_model_response[index]
                                            .name,
                                        categories: controller
                                            .ObjectLevels_model_response[index]
                                            .categories),
                                  ));
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.h),
                              child: Container(
                                width: 327.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(
                                      color: ColorUtils.FF657F,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color(0x29000000),
                                          offset: Offset(0, 3),
                                          blurRadius: 6)
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.only(right: 24.h),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      controller
                                          .ObjectLevels_model_response[index]
                                          .name,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: ColorUtils.FF657F,
                                        fontFamily: ConstVariable.FontFamily,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 16.h,
                          );
                        },
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return Center(
                        child: Text('404'),
                      );
                    }
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
