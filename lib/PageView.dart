import 'dart:developer';
import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/Utils/ColorApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Utils/const.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
 late PageController pageController;
 int _pageNumber = 0;
 @override
  void initState() {
    pageController = PageController();// TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();// TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async => await false,
      child: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomRight,
                colors: [
              ColorUtils.BAE5EF,
              ColorUtils.FF657F_lite
            ]),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 70.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 470.1.h,
                   width: double.infinity,
                  child: Center(
                    child: PageView(
                      controller: pageController,
                      onPageChanged: (int i){
                        setState((){
                          _pageNumber = i;
                        });
                      },
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0.h),
                          child: Column(
                           children: [
                             Image.asset(
                               'assets/pageview1.png',
                               width: 328.57.w,
                               height: 242.1.h,
                             ),
                             SizedBox(
                               height: 5.h,
                             ),
                             Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', style: TextStyle(
                                 fontFamily: ConstVariable.FontFamily, fontWeight: FontWeight.bold, fontSize: 25.sp),textAlign: TextAlign.center,),
                             SizedBox(
                               height: 15.h,
                             ),
                             Text(
                                 'هذا النص هو مثال لنص يمكن أن يستبدل'
                                 'في نفس المساحة، لقد تم توليد هذا النص'
                                 'من مولد النص العربى',
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     fontFamily: ConstVariable.FontFamily, fontWeight: FontWeight.w400, fontSize: 20.sp)),
                           ],
                            ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0.h),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/pageview2.png',
                                  width: 342.04.w,
                                  height: 224.01.h,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', style: TextStyle(
                                    fontFamily: ConstVariable.FontFamily, fontWeight: FontWeight.bold, fontSize: 25.sp),textAlign: TextAlign.center,),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                    'هذا النص هو مثال لنص يمكن أن يستبدل'
                                        'في نفس المساحة، لقد تم توليد هذا النص'
                                        'من مولد النص العربى',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: ConstVariable.FontFamily, fontWeight: FontWeight.w400, fontSize: 20.sp)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0.h),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/pageview3.png',
                                width: 188.87.w,
                                height: 227.53.h,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة', style: TextStyle(
                                  fontFamily:ConstVariable.FontFamily, fontWeight: FontWeight.bold, fontSize: 25.sp),textAlign: TextAlign.center,),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                  'هذا النص هو مثال لنص يمكن أن يستبدل'
                                      'في نفس المساحة، لقد تم توليد هذا النص'
                                      'من مولد النص العربى',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: ConstVariable.FontFamily, fontWeight: FontWeight.w400, fontSize: 20.sp)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 41.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(duration: Duration(milliseconds: 1000),curve: Curves.easeOutQuint,
                      width: 17.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: _pageNumber!=0?ColorUtils.whiteColor:ColorUtils.l273262,
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                              color:ColorUtils.l273262,
                          )),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    AnimatedContainer(duration: Duration(milliseconds: 1000),curve: Curves.easeOutQuint,
                      width: 17.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: _pageNumber!=1?ColorUtils.whiteColor:ColorUtils.l273262,
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                              color: ColorUtils.l273262
                          )
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    AnimatedContainer(duration: Duration(milliseconds: 1000),curve: Curves.easeOutQuint,
                      width: 17.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: _pageNumber!=2?ColorUtils.whiteColor:ColorUtils.l273262,
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                              color: ColorUtils.l273262
                          )
                      ),
                    )
                  ],),
                SizedBox(height: 52.h,),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   FloatingActionButton(
                     backgroundColor: ColorUtils.FF657F,
                       onPressed: (){
                         pageController.nextPage(duration:const Duration(microseconds:  5), curve: Curves.easeInOut);
                         if(_pageNumber == 2){
                           Navigator.pushReplacementNamed(context, routapp.LoginScreen);
                         }
                         },
                       child:Icon(Icons.arrow_back_ios_new))
                 ],
                  )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
