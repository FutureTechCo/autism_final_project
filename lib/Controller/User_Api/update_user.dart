import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../Model/Error_Model.dart';
import '../../Model/User_Model.dart';
import '../../View/Utils/HelperError.dart';
import '../ApiSetting/RootApi.dart';
import '../SharedPreferences/SharedPreferences.dart';
import 'package:http/http.dart' as http;
import '../RouteSetting/RoutesApplication.dart';




Future<String> Update_User(
    {required BuildContext context,  Data? user}) async {
  var url = Uri.parse(RootApi.User+'/'+SharedPreferencesApp().GetIdUser);
  var multiReq = http.MultipartRequest('POST', url);
  String m = '';
  var multiFile = await http.MultipartFile.fromPath('profileImg', user!.profileImg.toString());
  multiReq.files.add(multiFile);
  multiReq.fields.addAll(user.toJson());

  multiReq.headers['authorization'] = 'Bearer ' + SharedPreferencesApp().GetTokenUser;
  var response = await multiReq.send();
  print(response.statusCode);
  if (response.statusCode == 200) {
    var data = await response.stream.transform(utf8.decoder).first;
    var bode = response.stream.transform(utf8.decoder).map((event) {

    });


    m = jsonDecode(data)['message'];
  }
  return m;
}
