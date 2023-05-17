import 'dart:developer';

import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiAdvice.dart';
import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiLevelsVideos.dart';
import 'package:autism_final_project/Model/ModelAdvices.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXHomeUserController extends GetxController {
  static GetXHomeUserController get to => Get.find();

  ///======Advice||Tips Functions======///
  ModelAdvice ObjectDataAdvice = ModelAdvice();
  int nextPage =  1;
  void increments(){
   nextPage+=1;
   update();
  }
  Future<ModelAdvice> GetXGetAllAdvice({String page = '1'}) async {
    update(['Advice']);
     ObjectDataAdvice =  await ApiAdvice().GetAllAdvice(page:page);
    if(ObjectDataAdvice.results==0){
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
}