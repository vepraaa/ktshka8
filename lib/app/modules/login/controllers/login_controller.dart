import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/services/api_service.dart';
import '../../../data/services/auth_service.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  var mailController = TextEditingController();
  var passController = TextEditingController();

  login() async {
    bool res =
        await authService.login(mailController.text, passController.text);
        print(authService);
        print(mailController.text);
        print(passController.text);
    if (res) {
      authService.isLogin = true;
      Get.offAndToNamed(Routes.HOME);
      print('Login is successfull');
    } else {
      print('Login failed');
    }
  }

  toLogin() {
    Get.toNamed(Routes.REGISTRATION);
  }

}
