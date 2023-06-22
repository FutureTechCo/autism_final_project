import 'package:autism_final_project/Controller/ApiSetting/ApiHomeUser/ApiHome.dart';
import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Model/ModelCommit.dart';
import 'package:autism_final_project/Model/ModelPosts.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Check.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Community.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Profile.dart';
import 'package:autism_final_project/View/Utils/HelperError.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '';

class GetxBnScreen extends GetxController with Helper {
  static GetxBnScreen get to => Get.find();
  List<Comments> comments = [];
  List<Widget> body = [Home(), Community(), Check(), Profile()];
  int selectIndex = 0;

  void SetSelectIndex(int i) {
    this.selectIndex = i;
    update(['BnScreen']);
  }

  /// Post
  Future<ModelPosts> GetAllPost() async {
    update(['BnCommunity']);
    return await ApiHome().GetAllPost();
  }

  Future<void> GetAllCommentSpecificPost({required String id}) async {
    await ApiHome().GetpostsSpecific(id: id).then((value) {
      comments = [];
      comments.addAll(value.comments!);
    });
    update(['BnCommunity', 'ShowPostSpecific']);
  }

  /// CreateComment
  TextEditingController textComment = TextEditingController();

  Future<void> WiretCooment(
      {required BuildContext context, required String PostId}) async {
    if (textComment.text.isNotEmpty) {
      await ApiHome()
          .WriteComment(context, text: textComment.text, Post: PostId)
          .then((value) {
        ShowSnackBar(
            context: context, Message: 'تم الاضافة بنجاح', Error: true);
        textComment.text = '';
      });
    } else {
      ShowSnackBar(context: context, Message: 'الحقل فارغ', Error: false);
    }
    await GetAllCommentSpecificPost(id: PostId);
    update(['ShowPostSpecific']);
  }
}
