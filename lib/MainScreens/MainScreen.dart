import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:autism_final_project/Custom/CustomBottomNavigationBar.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Community.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BnScreen>(
      id: 'BnScreen',
      builder: (controller) => Scaffold(
          backgroundColor: Color(0xffEFF7F9),
          body: controller.body[controller.selectIndex],
          bottomNavigationBar: CustomBottomNavigationBar(
              backgroundColor: Colors.white,
              selectedIndex: controller.selectIndex,
              onItemTapped: controller.SetSelectIndex)),
    );
  }
}
