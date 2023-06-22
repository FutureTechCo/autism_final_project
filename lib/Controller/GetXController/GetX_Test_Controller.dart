import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiTest_and_Question.dart';
import 'package:autism_final_project/Model/ModelQuestion.dart';
import 'package:autism_final_project/Model/ModelTest.dart';
import 'package:autism_final_project/Model/Model_All_Question.dart';
import 'package:autism_final_project/View/Utils/HelperError.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GetXTestController extends GetxController with Helper {
  static GetXTestController get to => Get.find();
  final ApiTest_and_Question _apiTestDoctor = ApiTest_and_Question();

  /// FunctionTest

  Future<void> CreateNewTestByDoctor(
      {required BuildContext context,
      required String title,
      required String Token,
      String id = ''}) async {
    bool result = await _apiTestDoctor.CreateNewTest(
        context: context, titleTest: title, Token: Token, id: id);
    if (result) {
      if (id.isNotEmpty) {
        ShowSnackBar(
            context: context,
            Message: 'تم تعديل اسم الإختبار إذهب لوضع أسالة له',
            Error: true);
      } else {
        ShowSnackBar(
            context: context,
            Message: 'تم إنشاء الإختبار إذهب لوضع أسالة له',
            Error: true);
      }
    } else {
      ShowSnackBar(context: context, Message: 'قم بتسجيل دخول', Error: false);
    }
  }

  Future<void> DeletedTestByDoctor(
      {required BuildContext context,
      required String Token,
      required String id}) async {
    bool result =
        await _apiTestDoctor.DeleteTest(context: context, Token: Token, id: id);
    if (result) {
      ShowSnackBar(context: context, Message: 'تم الحذف بنجاح', Error: true);
    } else {
      ShowSnackBar(context: context, Message: 'قم بتسجيل دخول', Error: false);
    }
  }

  Future<AllTest> GetAllTest() async {
    return await _apiTestDoctor.GetAllTest();
  }

  /// FunctionQuestion
  Future<void> CreateNewQuestionByDoctor({
    required BuildContext context,
    required String Token,
  }) async {
    var result = await _apiTestDoctor.CreateQuestion(
        Token: Token, object: Question.fromJson(data));
    if (result) {
      ShowSnackBar(context: context, Message: 'تم إنشاء السؤال', Error: true);
    } else {
      ShowSnackBar(context: context, Message: 'قم بتسجيل دخول', Error: false);
    }
  }
  Future<void> DeletedQuestionByDoctor(
      {required BuildContext context,
        required String Token,
        required String id}) async {
    bool result =
    await _apiTestDoctor.DeleteQuestion(context: context, Token: Token, id: id);
    if (result) {
      ShowSnackBar(context: context, Message: 'تم الحذف بنجاح', Error: true);
    } else {
      ShowSnackBar(context: context, Message: 'قم بتسجيل دخول', Error: false);
    }
  }
  Future<AllQuestion> GetAllQuestion() async {
    return await _apiTestDoctor.GetAllQuestion();
  }
  ///Datas
  Map<String, dynamic> data = {
    "typeQuestion": "Choose",
    "QuestionText": "ما هوا هدا ",
    "QuestionChoices1": "شينبىي",
    "Answer": "a",
    "Test": "64940ecc2895e146761e438d",
    "AnswerEvaluation": "57845",
    "QuestionChoicesEvaluation1": "21",
    "QuestionChoices2": "dd",
    "QuestionChoicesEvaluation2": "22",
    "QuestionChoices3": "fdsf",
    "QuestionChoicesEvaluation3": "23",
    "QuestionChoices4": "sf",
    "QuestionChoicesEvaluation4": "23"
  };
}
