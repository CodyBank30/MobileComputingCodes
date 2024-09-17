import 'package:dio/dio.dart';
import 'package:vrutant_login/Tree/model/get_tree_model.dart';

import '../Auth/Model/login_model.dart';
import '../Auth/Model/register_model.dart';

class ApiServices{
  final dio = Dio();
  var baseUrl = "https://www.sparkstoideas.com/LJ/api/";

  Future<RegiterModel>register(Name,SurName,Email,Password)async{
    final user_form =FormData();

    user_form.fields.add(MapEntry("Name",Name ));
    user_form.fields.add(MapEntry("SurName",SurName ));
    user_form.fields.add(MapEntry("Email",Email ));
    user_form.fields.add(MapEntry("Password",Password ));
    final value_user = await dio.post("${baseUrl}register",
        data:user_form);
    if(value_user.statusCode == 200){
      final result_user = RegiterModel.fromJson(value_user.data);
      return result_user;
    }else{
      throw 'Something went wrong';
    }
  }



  Future<GetTreeModel>getTree()async{
    final value_user = await dio.get("${baseUrl}get_tree_plant");
    if(value_user.statusCode == 200){
      final result_user = GetTreeModel.fromJson(value_user.data);
      return result_user;
    }else{
      throw 'Something went wrong';
    }
  }

}