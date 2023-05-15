import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/ConfirmationScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/LoginScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/NewPasswordScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/OtpCodeScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/ResetPasswordScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/SignUpScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/image_user.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/phone_user.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetAuth/started.dart';
import 'package:autism_final_project/View/MainScreens/BnScreen/Home.dart';
import 'package:autism_final_project/View/MainScreens/MainScreen.dart';
import 'package:autism_final_project/View/PageView.dart';
import 'package:autism_final_project/View/Search.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/VideoCourse.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/VideosLevels.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetCourse/WatchVideo.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetDoctors/DoctorsScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetDoctors/Dr.DoctorsScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetProfile/MyPost.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetProfile/Notification.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetService/ServiceScreen.dart';
import 'package:autism_final_project/View/WidgetsApplications/WidgetTips/TipsScreen.dart';
import 'package:autism_final_project/View/lunchScreen.dart';
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
  static const String TipsScreen = '/TipsScreen';
  static const String DrDoctorScreen = '/DrDoctorScreen';
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
        case routapp.TipsScreen:
        return MaterialPageRoute(
          builder: (context) => TipsScreen(),
        );
        case routapp.DrDoctorScreen:
        return MaterialPageRoute(
          builder: (context) => DrDoctorScreen(),
        );
      default:
        return null;
    }
  }
}
