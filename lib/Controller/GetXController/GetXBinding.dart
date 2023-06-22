import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:get/get.dart';

import 'GetX_Videos/GetXHomeUserController.dart';

class GetBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(GetxBnScreen());
    Get.put(GetXHomeUserController());
  }

}