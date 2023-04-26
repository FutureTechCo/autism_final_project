import 'package:autism_final_project/AuthScreens/ConfirmationScreen.dart';
import 'package:autism_final_project/AuthScreens/LoginScreen.dart';
import 'package:autism_final_project/AuthScreens/NewPasswordScreen.dart';
import 'package:autism_final_project/AuthScreens/OtpCodeScreen.dart';
import 'package:autism_final_project/AuthScreens/ResetPasswordScreen.dart';
import 'package:autism_final_project/AuthScreens/SignUpScreen.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/MainScreens/MainScreen.dart';
import 'package:autism_final_project/PageView.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetDoctors/DoctorsScreen.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetService/ServiceScreen.dart';
import 'package:autism_final_project/lunchScreen.dart';
import 'package:flutter/material.dart';

class routapp {
  static const String initialRoute = '/';
  static const String pageViewRoutScreen = '/PageViewScreen';
  static const String LoginScreen = '/LoginScreen';
  static const String ResetPasswordScreen = '/ResetPasswordScreen';
  static const String OtpCodeScreen = '/OtpCodeScreen';
  static const String NewPasswordScreen = '/NewPasswordScreen';
  static const String ConfirmationScreen = '/ConfirmationScreen';
  static const String SignUpScreen = '/SignUpScreen';
  static const String HomeScreen = '/HomeScreen';
  static const String MainScreen = '/MainScreen';
  static const String ServiceScreen = '/ServiceScreen';
  static const String DoctorsScreen = '/DoctorsScreen';
}

class AppRouts {
  static Route? OnGenerateRout(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case routapp.initialRoute:
        return MaterialPageRoute(builder: (context) => LunchScreen());
      case routapp.pageViewRoutScreen:
        return MaterialPageRoute(
          builder: (context) => const PageViewScreen(),
        );
      case routapp.LoginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case routapp.ResetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );
      case routapp.OtpCodeScreen:
        return MaterialPageRoute(
          builder: (context) => const OtpCodeScreen(),
        );
      case routapp.NewPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const NewPasswordScreen(),
        );
      case routapp.ConfirmationScreen:
        return MaterialPageRoute(
          builder: (context) => const ConfirmationScreen(),
        );
      case routapp.SignUpScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case routapp.MainScreen:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
      case routapp.HomeScreen:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
        ;
      case routapp.ServiceScreen:
        return MaterialPageRoute(
          builder: (context) => ServiceScreen(),
        );case routapp.DoctorsScreen:
        return MaterialPageRoute(
          builder: (context) => DoctorsScreen(),
        );
      default:
        return null;
    }
  }
}
