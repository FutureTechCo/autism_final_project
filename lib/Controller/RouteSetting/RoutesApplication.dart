import 'package:autism_final_project/AuthScreens/ConfirmationScreen.dart';
import 'package:autism_final_project/AuthScreens/LoginScreen.dart';
import 'package:autism_final_project/AuthScreens/NewPasswordScreen.dart';
import 'package:autism_final_project/AuthScreens/OtpCodeScreen.dart';
import 'package:autism_final_project/AuthScreens/ResetPasswordScreen.dart';
import 'package:autism_final_project/AuthScreens/SignUpScreen.dart';
import 'package:autism_final_project/AuthScreens/image_user.dart';
import 'package:autism_final_project/AuthScreens/phone_user.dart';
import 'package:autism_final_project/AuthScreens/started.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/MainScreens/MainScreen.dart';
import 'package:autism_final_project/PageView.dart';
import 'package:autism_final_project/Search.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetCourse/VideoCourse.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetCourse/VideosLevels.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetCourse/WatchVideo.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetDoctors/DoctorsScreen.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetProfile/MyPost.dart';
import 'package:autism_final_project/WidgetsApplications/WidgetProfile/Notification.dart';
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
  static const String ImageUserScreen = '/ImageUserScreen';
  static const String PhoneUserScreen = '/PhoneUserScreen';
  static const String StartedScreen = '/StartedScreen';
  static const String MyPostScreen = '/MyPostScreen';
  static const String VideoLevelScreen = '/VideoLevelScreen';
  static const String WatchVideoScreen = '/WatchVideoScreen';
  static const String VideoCourseScreen = '/VideoCourseScreen';
  static const String NotificationScreen = '/NotificationScreen';
  static const String SearchScreen = '/SearchScreen';
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
        );
      case routapp.DoctorsScreen:
        return MaterialPageRoute(
          builder: (context) => DoctorsScreen(),
        );
      case routapp.ImageUserScreen:
        return MaterialPageRoute(
          builder: (context) => ImageUser(),
        );
      case routapp.PhoneUserScreen:
        return MaterialPageRoute(
          builder: (context) => PhoneUser(),
        );
      case routapp.StartedScreen:
        return MaterialPageRoute(
          builder: (context) => StartedScreen(),
        );
      case routapp.MyPostScreen:
        return MaterialPageRoute(
          builder: (context) => MyPostScreen(),
        );
      case routapp.VideoLevelScreen:
        return MaterialPageRoute(
          builder: (context) => VideoLevel(),
        );
      case routapp.WatchVideoScreen:
        return MaterialPageRoute(
          builder: (context) => WatchVideo(),
        );
      case routapp.VideoCourseScreen:
        return MaterialPageRoute(
          builder: (context) => VideoCourse(),
        );
      case routapp.NotificationScreen:
        return MaterialPageRoute(
          builder: (context) => NotificationScreen(),
        );
      case routapp.SearchScreen:
        return MaterialPageRoute(
          builder: (context) => SearchScreen(),
        );
      default:
        return null;
    }
  }
}
