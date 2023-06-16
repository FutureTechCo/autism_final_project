import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiLevelsVideos.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/CreatePdfFile.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/WidgetLevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controller/GetXController/GetX_Videos/GetXHomeUserController.dart';

class UserReport extends StatefulWidget {
  const UserReport({Key? key}) : super(key: key);

  @override
  State<UserReport> createState() => _UserReportState();
}

class _UserReportState extends State<UserReport> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetXHomeUserController>(
      id: 'DataResultLevels',
      builder: (controller) =>Container(
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
              title: Text('تقرير',
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
              actions: [
                InkWell(
                  onTap: () async {
                    await createPdf.createPDFfile(data: controller.DataResult!);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width:70,
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff003298),
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 6.w,),
                          Text('PDF', style: TextStyle(
                              color: Color(0xff003298),
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                          Spacer(),
                          Icon(
                            Icons.download, color: Color(0xff003298),),
                          SizedBox(width: 6.w,),


                        ],
                      ),

                    ),
                  ),
                )
              ],
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: FutureBuilder<void>(
                future: controller.get_pasent(cus_id: ApiLevelsVideos.userId),
                builder: (context, snapshot) {
                  if (controller.DataResult.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'ما تم إنجازه من الأنشطة',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 600.h,
                          width: 370.w,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            child: ListView(
                              children: [
                                for (int j = 0;
                                    j < controller.DataResult.length;
                                    j++)
                                  if (controller.DataResult[j] != null)
                                    widjet_level(
                                        percent:controller.percent,
                                        titel: controller.DataResult[j].name,
                                        level_id:
                                            "${controller.DataResult[j].id}",
                                        cust_id: ApiLevelsVideos.userId)
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  } else if (controller.DataResult.length == 0) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Column(
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
      ),
    );
  }
}
