import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';
import 'package:autism_final_project/Controller/SharedPreferences/SharedPreferences.dart';
import 'package:autism_final_project/View/PageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/ColorApp.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),() {
      if(!SharedPreferencesApp().GetLlgin){
      Navigator.pushReplacementNamed(context,routapp.pageViewRoutScreen);
      }else{
        Navigator.pushReplacementNamed(context,routapp.MainScreen);
      }
    },);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  ColorUtils.BAE5EF,
                  ColorUtils.FF657F_lite
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
            ],
          ),
        )
    );
  }
}
