import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/services/auth_service.dart';
import '../../../routes/app_pages.dart';

class RegistrationController extends GetxController {
  AuthService authService = Get.find();

  var mailController = TextEditingController();
  var passController = TextEditingController();
  var passRepController = TextEditingController();

  void Registration() async {
    if (!mailController.text.contains("@")) {
      showSnack("Invalid mail");
      return;
    }
    if (passController.text.length < 8) {
      showSnack("Password length <8 letters");
      return;
    }
    if (passController.text != passRepController.text) {
      showSnack("Password isn't mathing");
      return;
    }

    bool res = await authService.registration(
        mailController.text, passController.text);
    if (res) {
      authService.isLoggedIn = true;
      Get.offNamed(Routes.HOME);
      showSnack('Registration is successfull', isError: false);
    } else {
      showSnack('Registration failed');
    }
  }

  void showSnack(String message, {isError = true}) {
    Get.showSnackbar(
      GetSnackBar(
        message: message,
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
