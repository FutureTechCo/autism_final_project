
import 'dart:developer';

import 'package:flutter/material.dart';

import 'HelperError.dart';
class CheckPasswordAndEmail with Helper {
  bool Check({required String password,required  String p,required  String e,required BuildContext context}) {
    if (password.length < 6) {
      ShowSnackBar(context: context, Error: false, Message: 'كلمه السر قصيرة');
      return false;
    } else if (password.isEmpty) {
      ShowSnackBar(context: context, Error: false, Message: 'الحقل فارغ');
      return false;
    } else if (p != password) {
      ShowSnackBar(
          context: context, Error: false, Message: 'كلمه السر غير متطابقه');
      return false;
    } else if (p == password&&(e.contains('@gmail.com') || e.contains('@hotmail.com'))) {
      ShowSnackBar(context: context, Error: true, Message: 'تم التسجيل بنجاح');
      return true;
    } else if (!e.contains('@gmail.com') || !e.contains('@hotmail.com')) {
      ShowSnackBar(context: context, Error: false, Message: 'الايميل غير رسمي يجب ان يحتوي على (@hotmail.com|@gmail.com)');
      return false;
    } else {
      return false;
    }
  }
}
