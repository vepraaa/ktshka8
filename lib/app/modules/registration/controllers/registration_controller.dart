import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktshka8/app/data/services/auth_service.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

class RegistrationController extends GetxController {
  AuthService authService = Get.find();
  void toLogin() => Get.toNamed(Routes.LOGIN);
  var mailController = TextEditingController();
  var passController = TextEditingController();
  var passRepController = TextEditingController();

  void registration() {
    // signUp
    if (!mailController.text.contains("@")) {
      showError("Invalid email address");
      return;
    }
    if (passController.text.length < 8) {
      showError("Password length must be at least 8 characters!");
      return;
    }
    if (passController.text != passRepController.text) {
      showError("Passwords does not match!");
      return;
    }
  }

  void tryRegister(String mail, String password) =>
      authService.registration(mail, password);

  void showError(String message) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 2),
    ));
  }
}