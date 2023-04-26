import 'package:autism_final_project/MainScreens/BnScreen/Community.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BnScreen extends GetxController{
 static  BnScreen get to => Get.find();
 List<Widget> body = [
   Home(),
   Community(),
   Center(
     child: Text('message'),
   ),
   Profile()
 ];
 int selectIndex = 0;
 void SetSelectIndex(int i){
   this.selectIndex = i;
   update(['BnScreen']);
 }
}