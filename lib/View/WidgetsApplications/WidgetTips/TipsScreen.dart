import 'dart:developer';
import 'package:autism_final_project/Controller/GetXController/GetXHomeUser/GetXHomeUserController.dart';
import 'package:autism_final_project/Model/ModelAdvices.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetShowModalBottomSheet/WidgetTips/ShowTipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  late ScrollController scrollController;
  int next = 1;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        setState(() {
          next++;
        });
        var t = await GetXHomeUserController.to
            .GetXGetAllAdvice(page: next.toString());
      } else {
        log('s');
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    scrollController.dispose();
    // TODO: implement deactivate
    super.deactivate();
  }

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
          title: Text('نصائح',
              style: TextStyle(
                  fontFamily: ConstVariable.FontFamily,
                  fontWeight: FontWeight.w700,
                  color: ColorUtils.l273262,
                  fontSize: 18.sp)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_right_alt,
                color: ColorUtils.l273262,
              )),
          centerTitle: true,
        ),
        body: GetBuilder<GetXHomeUserController>(
          id: 'Advice',
          builder: (controller) => FutureBuilder<ModelAdvice>(
            future: controller.GetXGetAllAdvice(),
            builder: (context, snapshot) {
              if (snapshot.hasData && controller.ObjectDataAdvice.results > 0) {
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: ListView.separated(
                        shrinkWrap: true,
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              ShowTip.show(context,controller.ObjectDataAdvice.data[index].advice);
                            },
                            child: Container(
                              width: 327.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.ObjectDataAdvice.data[index].titel,
                                      style: TextStyle(
                                          fontFamily: ConstVariable.FontFamily,
                                          fontWeight: FontWeight.w700,
                                          color: ColorUtils.l273262,
                                          fontSize: 12.sp),
                                    ),
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(90.r),
                                          color: ColorUtils.FF657F),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: 12.spMin,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
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
                        itemCount: controller.ObjectDataAdvice.results));
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Center(
                  child: Text('404'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
