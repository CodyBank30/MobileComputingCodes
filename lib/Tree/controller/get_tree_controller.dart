import 'package:get/get.dart';
import 'package:vrutant_login/Tree/model/get_tree_model.dart';

import '../../ApiScrevices/Api_screvices.dart';

class GetTreeController extends GetxController{
  RxBool isLoading = false.obs;
  var response = GetTreeModel().obs;

  Future<void> getTreeCont()async{
    try{
      isLoading(true);
      final respo =await ApiServices().getTree();
      if(respo.responseCode=="1"){
        response = respo.obs;
        print("${response.value.message}");
      }
    }catch (e){
      print("Get Tree error $e");
    }
    finally{
      isLoading(false);
    }
  }
}