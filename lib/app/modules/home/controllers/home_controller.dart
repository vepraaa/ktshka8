import 'package:get/get.dart';
import 'package:ktshka8/app/data/services/api_service.dart';
import 'package:ktshka8/app/data/services/auth_service.dart';

class HomeController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  RxString getdata = "".obs;
  RxString get data => getdata;

  Future<void> getUser() async {
    var res  = await apiService.getUser();
    welcometext.value = res;
  }
  RxString welcometext = "".obs;

  @override
  void onReady() {
  getUser();
  super.onReady();
  }

  // void getUserData() async {
  // var newdata = await apiService.getUser();
  // getdata.value = newdata;
  // }


}
