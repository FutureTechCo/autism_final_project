import 'dart:convert';

import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Model/ModelAdvices.dart';
import 'package:http/http.dart' as http;
class ApiAdvice{
  Future<ModelAdvice> GetAllAdvice({String page = '1'})async{
    var url = Uri.parse(RootApi.Advice+'?page=$page');
    var response = await http.get(url);
    if(response.statusCode == 200){
      ModelAdvice data = ModelAdvice.fromJs(jsonDecode(response.body));
      return data;
    }
    return ModelAdvice();
  }
}