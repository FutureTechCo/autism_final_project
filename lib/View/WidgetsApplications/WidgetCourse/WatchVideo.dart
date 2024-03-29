import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiLevelsVideos.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controller/GetXController/GetX_Videos/GetXHomeUserController.dart';
import '../../Utils/ColorApp.dart';
import '../../Utils/const.dart';
import 'package:pod_player/pod_player.dart';

enum okORno { OK, NO }

class WatchVideo extends StatefulWidget {
  late Videos object;

  WatchVideo({Key? key, required this.object}) : super(key: key);

  @override
  State<WatchVideo> createState() => _WatchVideoState();
}

class _WatchVideoState extends State<WatchVideo> {
  late final PodPlayerController controller;
  okORno no = okORno.NO;

  @override
  void initState() {
    controller = PodPlayerController(
        playVideoFrom: PlayVideoFrom.youtube(
          widget.object.url,
        ),
        podPlayerConfig: const PodPlayerConfig(
            autoPlay: true, isLooping: false, videoQualityPriority: [720, 360]))
      ..initialise();
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    controller.dispose();
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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            widget.object.mission_number,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: ColorUtils.l273262,
              fontFamily: ConstVariable.FontFamily,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Color(0xff003298))),
        ),
        body: GetBuilder<GetXHomeUserController>(
          id: 'WatchVideo',
          builder: (controllers) => Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${widget.object.mission_number}:' +
                      '${widget.object.mission_name}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: ColorUtils.l273262,
                    fontFamily: ConstVariable.FontFamily,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 156.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: PodVideoPlayer(
                      frameAspectRatio: 328 / 150,
                      alwaysShowProgressBar: true,
                      controller: controller),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الهدف :',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.l273262,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      widget.object.touchstone,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RadioListTile<okORno>(
                          groupValue: no,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black)),
                          value: okORno.OK,
                          activeColor: ColorUtils.F06666,
                          title: Text(
                            'أنجز',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              color: no == okORno.OK
                                  ? ColorUtils.FF657F
                                  : ColorUtils.l273262,
                            ),
                          ),
                          onChanged: (okORno? values) async {
                            await controllers.VideoWatch(context: context,userId: ApiLevelsVideos.userId, videoId: widget.object.id.toString());
                            setState(() {
                              no = values!;
                            });
                          },
                        )),
                        SizedBox(
                          width: 2,
                        ),
                        Expanded(
                            child: RadioListTile<okORno>(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black)),
                          groupValue: no,
                          value: okORno.NO,
                          activeColor: ColorUtils.F06666,
                          title: Text(
                            'لم ينجز',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              color: no != okORno.OK
                                  ? ColorUtils.FF657F
                                  : ColorUtils.l273262,
                            ),
                          ),
                          onChanged: (okORno? values) async {
                            await controllers.VideoWatch(context: context,userId: ApiLevelsVideos.userId, videoId: widget.object.id.toString());
                            setState(() {
                              no = values!;
                            });
                          },
                        )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
