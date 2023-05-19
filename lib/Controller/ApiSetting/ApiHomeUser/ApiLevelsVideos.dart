import 'dart:convert';
import 'dart:developer';

import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:autism_final_project/Model/ModelReportUser.dart';
import 'package:autism_final_project/View/Utils/HelperError.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiLevelsVideos with Helper {
  static String userId = 'hjcIgtWndNMXi2qlasGARZaf5yz2';

  Future<List<levels_model_response>> getAllLevels() async {
    List<levels_model_response> DataResult;
    var url = Uri.parse(RootApi.Levels + userId);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      DataResult = <levels_model_response>[];
      jsonDecode(response.body).forEach((e) {
        DataResult.add(levels_model_response.fromJson(e));
      });
      return DataResult;
    }
    return [];
  }

  ///======WatchVideo Function======///
  Future<void> WatchVideo(
      {required BuildContext context,
      required String uid,
      required String vid}) async {
    if (userId == '1') {
      ShowSnackBar(
          context: context, Message: 'يجب عليك الدخول باستخدام الحساب');
    } else {
      var url = Uri.parse(RootApi.watch);
      var response =
          await http.post(url, body: {'cus_id': uid, 'video_id': vid});
      if (response.statusCode == 200) {
        ShowSnackBar(context: context, Message: 'لم يتم المشاهدة');
      } else if (response.statusCode == 201) {
        ShowSnackBar(context: context, Message: 'تم المشاهدة');
      }
    }
  }

  ///======UserReport======///
  int i = 0;

  Future<List<Level>> getrebort({required cus_id}) async {
    List<Level> DataResult;
    var url = Uri.parse("${RootApi.report + cus_id}");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      DataResult = <Level>[];
      var Rebort = jsonDecode(response.body);
      rebort_cust x = rebort_cust.fromJson(Rebort);
      DataResult = x.Leveles!;
      i++;
      return DataResult;
    }
    return [];
  }

  Future<Level?> getLevel({required cus_id, required level_id}) async {
    var url = Uri.parse("${RootApi.report + cus_id}&level_id=$level_id");
    var response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var Rebort = jsonDecode(response.body);
      rebort x = rebort.fromJson(Rebort);
      Level? y = x.level;
      return y;
    }
    var x;
    return x;
  }
}
