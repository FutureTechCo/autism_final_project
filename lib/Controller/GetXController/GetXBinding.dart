import 'package:autism_final_project/Controller/GetXController/BnScreenController/GetxBnScreen.dart';
import 'package:get/get.dart';

class GetBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(BnScreen());
  }

}