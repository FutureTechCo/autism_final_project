
import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiLevelsVideos.dart';
import 'package:autism_final_project/Controller/GetXController/GetXHomeUser/GetXHomeUserController.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/WatchVideo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../Model/ModelReportUser.dart';

class block_reselt extends StatelessWidget {
  block_reselt(cus_id, level_id) {
    this.cus_id = cus_id;
    this.level_id = level_id;
  }

  String cus_id = ApiLevelsVideos.userId;

  String level_id = '1';

  @override
  Widget build(BuildContext context) {
    print('%%%%%%%%');
    return GetBuilder<GetXHomeUserController>(
        id: 'GetLevels',
        builder: (controller) {
          controller.level = Level();
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
                  title: Text('إحصائيات',
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
                key: controller.key,
                body: FutureBuilder<void>(
                    future: controller.getLevel(
                        cus_id: ApiLevelsVideos.userId,
                        level_id: level_id),
                    builder: (context, snapshot) {
                      //          print("kjhkjh${controller.level.name}");

                      if (snapshot.connectionState == ConnectionState.done) {
                        return SafeArea(
                            child: Column(
                          children: [
                             SizedBox(
                               width: double.infinity.w,
                              height: 10.h,
                            ),
                            SizedBox(
                                height: 573.99.h,
                                width: 324.w,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.h),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Container(
                                        height: 41.98.h,
                                        width: 321.w,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.r),
                                              topRight: Radius.circular(10.r),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff7899DC),
                                                spreadRadius: 2,
                                              )
                                            ]),
                                        child: Center(
                                            child: Text(
                                          '${controller.level.name}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.sp,
                                              fontFamily: 'Arial',
                                              color: Color(0xff003298)),
                                        )),
                                      ),
                                      for (int j = 0;
                                          j < controller.level.categories!.length;
                                          j++)
                                        Row(
                                          children: [
                                            Container(
                                              height: 44,
                                              width: 57,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff3A7FC4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0xff7899DC),
                                                      spreadRadius: 2,
                                                    )
                                                  ]),
                                              child: Center(
                                                  child: Text(
                                                    controller.level!.categories![j]
                                                        .letter!,
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  )),
                                            ),
                                            for (int k = 0;
                                                k <
                                                    controller
                                                        .level!
                                                        .categories![j]
                                                        .videos!
                                                        .length;
                                                k++)
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    Videos Oject = controller
                                                        .level!
                                                        .categories![j]
                                                        .videos![k] as Videos;
                                                    controller.SetVideos(Oject);
                                                    controller.SetTapTitle(
                                                        controller.level
                                                            .categories![j].name);
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => WatchVideo(
                                                              object: Oject),
                                                        ));
                                                  },
                                                  child: Container(
                                                    height: 44,
                                                    width: 57,
                                                    decoration: BoxDecoration(
                                                        color: controller
                                                                .level!
                                                                .categories![j]
                                                                .videos![k]
                                                                .is_watched!
                                                            ? Color(0xff00FF00)
                                                            : Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Color(0xff7899DC),
                                                            spreadRadius: 2,
                                                          )
                                                        ]),
                                                    child: Center(
                                                      child: Text(
                                                        controller
                                                                .level
                                                                .categories![j]
                                                                .letter! +
                                                            ' - ${k + 1}',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xffA6A6A6),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        )
                                    ],
                                  ),
                                )),
                          ],
                        ));
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              size: 24.sm,
                            ),
                            Text(
                              'No Data',
                              style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        );
                      }
                    })),
          );
        });
  }
}
