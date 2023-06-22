import 'dart:convert';
import 'dart:developer';

import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Model/ModelAdvices.dart';
import 'package:http/http.dart' as http;
class ApiAdvice{
  Future<ModelAdvice> GetAllAdvice({String page = '1'})async{
    var url = Uri.parse(RootApi.Advice+'?page=$page');
    var response = await http.get(url);
    if(response.statusCode == 200){
      log('message%${response.statusCode}');
      log('message%${jsonDecode(response.body)}');
      ModelAdvice data = ModelAdvice.fromJson(jsonDecode(response.body));
      log('message%${data}');
      return data;
    }
    return ModelAdvice();
  }
  
}