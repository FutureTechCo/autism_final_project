import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:autism_final_project/Model/ModelPosts.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetShowModalBottomSheet/WidgetPost/ShowPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';

class PostWidget extends StatelessWidget {
  bool? mypost = false;
  Posts? posts;
  PostWidget({Key? key, this.mypost,this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime newDate = DateTime.parse(posts!.createdAt);
    String y = newDate.year.toString();
    String d = newDate.day.toString();
    String m = newDate.month.toString();
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
                  ' تاريخ النشر$d-$m-$y ',
                  // '   26/4/2023',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: ColorUtils.l273262,
                    fontFamily: ConstVariable.FontFamily,
                  ),
                ),
                subtitle: GetxBnScreen.to.selectIndex == 3
                    ? null
                    : Text(
                        'قبل ساعتين',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorUtils.l273262,
                          fontFamily: ConstVariable.FontFamily,
                        ),
                      ),
                leading: GetxBnScreen.to.selectIndex == 3
                    ? null
                    : CircleAvatar(
                        radius: 22.r,
                        foregroundImage: AssetImage('assets/face.png'),
                      ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(GetxBnScreen.to.selectIndex != 3
                        ? Icons.bookmark_outline
                        : Icons.more_horiz)),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              posts!.text,
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
            !mypost!
                ? Row(
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
                          onPressed: () async{
                          await  GetxBnScreen.to.GetAllCommentSpecificPost(id: posts!.sId ).then((value) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPost(posts: posts),));
                            });
                          },
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
                  )
                : SizedBox(
                    width: 0.h,
                    height: 0.w,
                  )
          ],
        ),
      ),
    );
  }
}
