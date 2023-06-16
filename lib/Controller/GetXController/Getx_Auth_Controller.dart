import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../View/Utils/CheckPassword.dart';
import '../../View/Utils/HelperError.dart';
import '../Auth_API_Controller/Login_Controller.dart';
import '../Auth_API_Controller/SingUp_Controller.dart';

import 'package:autism_final_project/Controller/RouteSetting/RoutesApplication.dart';

class LoginGetx extends GetxController with Helper {
  LoginGetx get to => Get.find();


  /*Start Var SingupScreen*/
  final TextEditingController Email_SignUp_Controller = TextEditingController();
  final TextEditingController Password_SignUp_Controller = TextEditingController();
  final TextEditingController name_SignUp_Controller = TextEditingController();
  final TextEditingController phone_SignUp_Controller = TextEditingController();

  /*Start Var LoginScreen*/
  final TextEditingController Email_Login_Controller = TextEditingController();
  final TextEditingController Password_Login_Controller = TextEditingController();



  /*SignInFunsction*/
  Future<void> SignIn(BuildContext context) async {
    if (CheckPasswordAndEmail().Check(password: Password_SignUp_Controller.text,
        p: Password_SignUp_Controller.text, e: Email_SignUp_Controller.text,context:  context)) {
      await SinUp_Controller()
          .SinUp(
          context: context,
          email: Email_SignUp_Controller.value.text,
          password: Password_SignUp_Controller.value.text,
          name:name_SignUp_Controller.value.text,
          phone_SignUp_Controller.value.text)
          .then((value) {
           Navigator.pushNamed(context, '/ImageUserScreen') ;
        clear();
        log('Message Users => ${value}');
       // Navigator.pushReplacementNamed(context, '/InformationScreen');
      });
    }
  }

  void clear() {
    Email_SignUp_Controller.text = '';
    Password_SignUp_Controller.text = '';
    name_SignUp_Controller.text='';
    phone_SignUp_Controller.text='';
  }
  /*LoginFunsction*/
  Future<void> Login(BuildContext context) async {
    if (CheckPasswordAndEmail().Check(
        password: Password_Login_Controller.text,
        p: Password_Login_Controller.text,
        e: Email_Login_Controller.text,
        context: context)) {
      await Login_Controller()
          .login(
          context: context,
          email: Email_Login_Controller.value.text,
          password: Password_Login_Controller.value.text)
          .then((value) {
        clear();
        Navigator.pushReplacementNamed(context, routapp.MainScreen);

        // Navigator.pushReplacementNamed(context, '/InformationScreen');
      });
    }
  }

  void clearLogin() {
    Email_Login_Controller.text = '';
    Password_Login_Controller.text = '';
  }

}
