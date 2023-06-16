

import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../../Model/Error_Model.dart';
import '../../Model/User_Model.dart';
import '../../View/Utils/HelperError.dart';
import '../ApiSetting/RootApi.dart';
import '../SharedPreferences/SharedPreferences.dart';
import 'package:http/http.dart' as http;

class Login_Controller with Helper {


  Future login(
      {required BuildContext context,
        required String email,
        required String password}) async {
    var url = Uri.parse(RootApi.login);
    var resp = await http.post(url, body: {
      'email':email,
      'password':password,
    });
    user object=user();
    if(resp.statusCode == 200){
      user data = user.fromJson(jsonDecode(resp.body));
      await SharedPreferencesApp().SaveIdUser(Idu: data.data!.sId!);

      object =  data;


    }else if(resp.statusCode !=500){
      print(resp.statusCode);
      ShowSnackBar(
          context: context,
          Message: 'هناك عطل فني في النضام ',
          Error: false);


    }else{
      try{
      error data = error.fromJson(jsonDecode(resp.body));
      String? x=data.errors?.first.msg;
      switch (x) {

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


      }}catch(e){print(e);
      }

    }
    return object;


  }
}