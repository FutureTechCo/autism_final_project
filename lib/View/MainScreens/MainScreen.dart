import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:autism_final_project/View/CustomWidgets/CustomBottomNavigationBar.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Community.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/ColorApp.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetxBnScreen>(
      id: 'BnScreen',
      builder: (controller) => Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [ColorUtils.BAE5EF, ColorUtils.FF657F_lite]),
        ),
        child: Scaffold(
            backgroundColor:Colors.transparent,
            body: controller.body[controller.selectIndex],
            bottomNavigationBar: CustomBottomNavigationBar(
                backgroundColor: Colors.white,
                selectedIndex: controller.selectIndex,
                onItemTapped: controller.SetSelectIndex)),
      ),
    );
  }
}
