import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:autism_final_project/Model/ModelCommit.dart';
import 'package:autism_final_project/Model/ModelPosts.dart';
import 'package:autism_final_project/View/Utils/ColorApp.dart';
import 'package:autism_final_project/View/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShowPost extends StatelessWidget {
  Posts? posts;
  ShowPost({Key? key,this.posts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GetBuilder<GetxBnScreen>(
        id:'ShowPostSpecific',
        builder: (controller) =>  Container(
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.h, vertical: 10.h),
                    child: Column(
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ListTile(
                            title: Text(
                              posts!.user.name,
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
                        Text(posts!.text,
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
                                  posts!.like.toString(),
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
                                  posts!.views.toString(),
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
                                  posts!.comment.toString(),
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
                                              controller: GetxBnScreen.to.textComment,
                                              keyboardType: TextInputType.text,
                                              style: TextStyle(
                                                  fontFamily:
                                                  ConstVariable.FontFamily,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.sp),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'اكتب تعليق....',
                                                  hintStyle: TextStyle(
                                                      fontFamily: ConstVariable
                                                          .FontFamily,
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
                              onPressed: () async{
                                await GetxBnScreen.to.WiretCooment(context: context, PostId: posts!.sId).then((value) {});
                              },
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
                        for (int i = 0;
                        i < GetxBnScreen.to.comments.length;
                        i++)
                          Padding(
                            padding: EdgeInsets.all(8.0),
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
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            GetxBnScreen
                                                .to.comments[i].user!.name,
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: ColorUtils.l273262,
                                              fontFamily:
                                              ConstVariable.FontFamily,
                                            ),
                                          ),
                                          Text(
                                            GetxBnScreen.to.comments[i].text!,
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
      ),
    );
  }
}

