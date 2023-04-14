import 'package:autism_final_project/MainScreens/MainScreen.dart';
import 'package:autism_final_project/PageView.dart';
import 'package:autism_final_project/lunchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Controller/RouteSetting/RoutesApplication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return MaterialApp(
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: AppRouts.OnGenerateRout,
          title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainScreen(),
      );
    },);
  }
}