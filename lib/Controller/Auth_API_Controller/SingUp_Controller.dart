import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Model/Error_Model.dart';
import '../../Model/User_Model.dart';
import '../../View/Utils/HelperError.dart';
import '../ApiSetting/RootApi.dart';
import '../SharedPreferences/SharedPreferences.dart';
import 'package:http/http.dart' as http;

class SinUp_Controller with Helper {
  Future<user> SinUp(String phone,
      {required BuildContext context,required name,
        required String email,
        required String password } ) async {
    var url = Uri.parse(RootApi.signup);
    var resp = await http.post(url, body: {
      'name': name,
      'email': email,
      'password': password,
      'phone':phone,
      'passwordConfirm': password,
    });
    user object = user();
    if (resp.statusCode == 201) {
      print(resp.statusCode);
      user data = user.fromJson(jsonDecode(resp.body));
      await SharedPreferencesApp().SaveIdUser(Idu: data.data!.sId!);
      await SharedPreferencesApp().Save_token(token: data.token.toString());
print(data);
      object = data;
    } else if (resp.statusCode != 500) {
      print(resp.statusCode);
      ShowSnackBar(
          context: context,
          Message: 'هناك عطل فني في النضام ',
          Error: false);
    } else {
      try {
        error data = error.fromJson(jsonDecode(resp.body));
        String? x = data.errors?.first.msg;
        switch (x) {
          case 'User required':
            ShowSnackBar(
                context: context,
                Message: 'يجب وضع الاسم',
                Error: false);
            break;
          case 'Too short User name':
            ShowSnackBar(
                context: context,
                Message: 'يجب ان يتكون الاسم من ٣ حروف على الاقل',
                Error: false);
            break;
          case 'Email required':
            ShowSnackBar(
                context: context,
                Message: 'يجب وضع ايميل',
                Error: false);
            break;
          case 'Invalid email address':
            ShowSnackBar(
                context: context,
                Message: 'يجب وضع ايميل حقبقي',
                Error: false);
            break;
          case 'Password required':
            ShowSnackBar(
                context: context,
                Message: 'يجب وضع كلمة مرور',
                Error: false);
            break;
          case 'Password must be at least 6 characters':
            ShowSnackBar(
                context: context,
                Message: 'يجب وضع كلمة مرور تزيد عن ٦ حروف',
                Error: false);
            break;
        }
      } catch (e) {
        print(resp.statusCode);
      }
    }
    return object;

  }
}