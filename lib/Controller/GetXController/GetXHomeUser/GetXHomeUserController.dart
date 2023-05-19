import 'dart:developer';

import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiAdvice.dart';
import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiLevelsVideos.dart';
import 'package:autism_final_project/Model/ModelAdvices.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:autism_final_project/Model/ModelReportUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXHomeUserController extends GetxController {
  static GetXHomeUserController get to => Get.find();
  final GlobalKey<ScaffoldState> key = GlobalKey();

  ///======Advice||Tips Functions======///
  ModelAdvice ObjectDataAdvice = ModelAdvice();
  int nextPage = 1;

  void increments() {
    nextPage += 1;
    update();
  }

  Future<ModelAdvice> GetXGetAllAdvice({String page = '1'}) async {
    update(['Advice']);
    ObjectDataAdvice = await ApiAdvice().GetAllAdvice(page: page);
    if (ObjectDataAdvice.results == 0) {
      nextPage = 0;
    }
    log('message${ObjectDataAdvice}');
    return ObjectDataAdvice;
  }

  ///======LevelsVideos Functions======///
  List<levels_model_response> ObjectLevels_model_response = [];

  Future<List<levels_model_response>> GetXGetAllLevels() async {
    update(['Levels']);
    ObjectLevels_model_response = [];
    ObjectLevels_model_response = await ApiLevelsVideos().getAllLevels();
    return ObjectLevels_model_response;
  }

  Future<void> VideoWatch(
      {required BuildContext context,
      required String videoId,
      required String userId}) async {
    await ApiLevelsVideos()
        .WatchVideo(context: context, vid: videoId, uid: userId);
    update(['WatchVideo']);
  }

  ///======UserReport======///
  List<Level> DataResult = [];
  Level level = Level();
  VideosR objects = VideosR();
  var totel;
  var vieo_wathaed;
  var percent = 0.0;
  String tapTitle = '';

  Future<List<Level>> getrebort({required cus_id}) async {
    List<Level> temp = [];
    DataResult = [];
    temp = await ApiLevelsVideos().getrebort(cus_id: cus_id);
    DataResult.addAll(temp);
    return temp;
  }

  get_pasent({required cus_id}) async {
    var t = await getrebort(cus_id: cus_id);
    for (int i = 0; i < t.length; i++) {
      totel += t[i].categories?.length;
      for (int j = 0; j < t[i].categories!.length; j++) {
        for (int x = 0; x < t[i].categories![j].videos!.length; x++) {
          if (t[i].categories![j].videos![x].is_watched!) {
            vieo_wathaed++;
          }
        }
      }
    }

    percent = 0.0;
  }

  Future<void> getLevel({required cus_id, required level_id}) async {
    await ApiLevelsVideos()
        .getLevel(cus_id: cus_id, level_id: level_id)
        .then((value) {
      value.toString();
      level = value!;
      update();
    });
  }

  void SetVideos(value) {
    objects = value;

    update(['GetLevels']);
  }

  void SetTapTitle(value) {
    tapTitle = value;
    update(['GetLevels']);
  }
}
