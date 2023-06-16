import 'package:autism_final_project/Controller/GetXController/GetXBinding.dart';
import 'package:autism_final_project/View/MainScreens/MainScreen.dart';
import 'package:autism_final_project/View/PageView.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/CreatePdfFile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Controller/GetXController/Getx_Auth_Controller.dart';
import 'Controller/RouteSetting/RoutesApplication.dart';
import 'Controller/SharedPreferences/SharedPreferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put(LoginGetx());
  SharedPreferencesApp().MethodeInitSharedPref();
  WidgetsFlutterBinding.ensureInitialized();
  createPdf.init();
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
      return GetMaterialApp(
        initialBinding: GetBinding(),
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
         onGenerateRoute: AppRouts.OnGenerateRout,
          title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       );
    },);
  }
}