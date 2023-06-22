import 'dart:convert';

import 'package:autism_final_project/Controller/ApiSetting/RootApi.dart';
import 'package:autism_final_project/Controller/SharedPreferences/SharedPreferences.dart';
import 'package:autism_final_project/Model/Error_Model.dart';
import 'package:autism_final_project/Model/ModelCommit.dart';
import 'package:autism_final_project/Model/ModelPosts.dart';
import 'package:autism_final_project/View/Utils/HelperError.dart';
import 'package:http/http.dart' as http;
class ApiHome with Helper{
 Future<ModelPosts> GetAllPost()async{
   var url = Uri.parse(RootApi.posts);
   var response = await http.get(url);
   if(response.statusCode == 200){
     return ModelPosts.fromJson(jsonDecode(response.body));
   }else{
     return ModelPosts();
   }
 }
 Future<ModelComment> GetpostsSpecific({required String id})async{
   var url = Uri.parse(RootApi.postsSpecific.replaceFirst('id', id));
   var response = await http.get(url);
   if(response.statusCode == 200){
     return ModelComment.fromJson(jsonDecode(response.body));
   }else{
     return ModelComment();
   }
 }
 Future<bool> WriteComment(context,{required String text,required String Post})async{
   var url = Uri.parse(RootApi.Comment);
   var response = await http.post(url,body: {
     'text':text,
     'Post':Post,
     'user':SharedPreferencesApp().GetIdUser
   });
   if(response.statusCode == 201){
     return true;
   }else{
     error er = error.fromJson(jsonDecode(response.body));
     ShowSnackBar(context: context, Message: er!.errors![0].msg!, Error: false);
     return false;
   }
 }
}