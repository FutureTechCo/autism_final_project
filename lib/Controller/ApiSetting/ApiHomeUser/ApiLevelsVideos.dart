import 'dart:convert';

import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Model/ModelLevels.dart';
import 'package:http/http.dart' as http;

class ApiLevelsVideos{
  Future<List<levels_model_response>> getAllLevels() async {
    List<levels_model_response> DataResult;
    var url = Uri.parse(RootApi.Levels+'hjcIgtWndNMXi2qlasGARZaf5yz2');
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
}