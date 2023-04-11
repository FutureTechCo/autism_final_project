import 'package:autism_final_project/AuthScreens/ConfirmationScreen.dart';
import 'package:autism_final_project/AuthScreens/LoginScreen.dart';
import 'package:autism_final_project/AuthScreens/NewPasswordScreen.dart';
import 'package:autism_final_project/AuthScreens/OtpCodeScreen.dart';
import 'package:autism_final_project/AuthScreens/ResetPasswordScreen.dart';
import 'package:autism_final_project/AuthScreens/SignUpScreen.dart';
import 'package:autism_final_project/PageView.dart';
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
      default:
        return null;
    }
  }
}
