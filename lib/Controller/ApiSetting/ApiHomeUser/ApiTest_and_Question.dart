import 'dart:convert';

import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Model/ModelQuestion.dart';
import 'package:autism_final_project/Model/ModelTest.dart';
import 'package:autism_final_project/Model/Model_All_Question.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiTest_and_Question {
  /// Functions Test
  Future<bool> CreateNewTest(
      {required BuildContext context,
      required String titleTest,
      required String Token,
      String id = ''}) async {
    if (id.isNotEmpty) {
      var url = Uri.parse(RootApi.CreateTest + '/$id');
      var response = await http.put(url, headers: {'authorization': Token});
      if (response.statusCode < 400) {
        return true;
      } else {
        return false;
      }
    } else {
      var url = Uri.parse(RootApi.CreateTest);
      var response = await http.post(url, headers: {'authorization': Token});
      if (response.statusCode < 400) {
        return true;
      } else {
        return false;
      }
    }
  }

  Future<bool> DeleteTest(
      {required BuildContext context,
      required String Token,
      required String id}) async {
    var url = Uri.parse(RootApi.CreateTest + '/$id');
    var response = await http.delete(url, headers: {'authorization': Token});
    if (response.statusCode < 400) {
      return true;
    } else {
      return false;
    }
  }

  Future<AllTest> GetAllTest()async{
    var url = Uri.parse(RootApi.CreateTest);
    var response = await http.get(url);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      var ReslutAllTestData = AllTest.fromJson(data);
      return ReslutAllTestData;
    }else{
      return AllTest();
    }
  }

  /// Functions Question

  Future<bool> CreateQuestion({required String Token ,required Question object})async{
    var url = Uri.parse(RootApi.CreateQuestion);
    var response = await http.post(url, headers: {'authorization': Token} ,body: object.toJson());
    if(response.statusCode == 201){
      return true;
    }else{
      return false;
    }
  }
  Future<AllQuestion> GetAllQuestion()async{
    var url = Uri.parse(RootApi.CreateQuestion);
    var response = await http.get(url);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      var ReslutAllQuestionData = AllQuestion.fromJson(data);
      return ReslutAllQuestionData;
    }else{
      return AllQuestion();
    }
  }
  Future<bool> DeleteQuestion(
      {required BuildContext context,
        required String Token,
        required String id}) async {
    var url = Uri.parse(RootApi.CreateQuestion + '/$id');
    var response = await http.delete(url, headers: {'authorization': Token});
    if (response.statusCode < 400) {
      return true;
    } else {
      return false;
    }
  }
}
