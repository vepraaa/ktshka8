import 'package:get/get.dart';
import 'package:ktshka8/app/data/services/auth_service.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

class SplashController extends GetxController {
  AuthService authService = Get.find();

  @override
  void onReady() async {
    super.onReady();
    await authService.tryAuth();
    if (authService.isAuth) {
      Get.toNamed(Routes.HOME);
    }
    else {
      Get.toNamed(Routes.LOGIN);
    }
  }

}