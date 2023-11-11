import 'package:get/get.dart';
import 'package:ktshka8/app/data/services/auth_service.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  AuthService authService = Get.find();
  @override
  void onReady() async {
    await authService.tryAutoLogin();
    if(authService.isLoggedIn){
      Get.offNamed(Routes.HOME);
    }
    else {
      Get.offNamed(Routes.LOGIN);
    }
    super.onReady();
  }

}
