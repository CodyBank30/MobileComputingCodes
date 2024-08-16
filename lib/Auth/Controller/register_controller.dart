
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ApiScrevices/Api_screvices.dart';
import '../Model/register_model.dart';

class RegisterController extends GetxController{
  RxBool isLoading = false.obs;
  var response = RegiterModel().obs;
  TextEditingController nameCTC=TextEditingController();
  TextEditingController sNameCTC=TextEditingController();
  TextEditingController emailCTC=TextEditingController();
  TextEditingController passCTC=TextEditingController();

  Future<void> registerCont()async{
    try{
      isLoading(true);
      final respo =await ApiServices().register(nameCTC.text, sNameCTC.text, emailCTC.text, passCTC.text);
      if(respo.responseCode=="1"){
        response = respo.obs;
        print("${response.value.message}");
      }
    }catch (e){
      print("Register error $e");
    }
    finally{
      isLoading(false);
    }
  }
}