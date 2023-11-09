import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(244, 251, 199, 227),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 563, right: 566),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "V",
                    style: TextStyle(
                      fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(244, 249, 61, 164),
                    ),
                  ),
                  Text(
                    "epra",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Регистрация",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(36, 34, 34, 1)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(244, 251, 149, 205)),
              // margin:
              //     const EdgeInsets.only(top: 173, left: 563, right: 566),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 0),
                  TextField(
                    controller: controller.mailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        hintText: "Электронная почта",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(131, 131, 131, 1))),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: controller.passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        hintText: "Пароль (не менее 8 символов)",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(131, 131, 131, 1)),
                      )),
                    const SizedBox(height: 20),
                  TextField(
                    controller: controller.passRepController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        hintText: "Повторите пароль",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(131, 131, 131, 1)),
                      )),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () => controller.registration(),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor:
                                (Color.fromARGB(244, 249, 61, 164))),
                        child: const Text(
                          "Зарегистрироваться",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        )),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                "У вас уже есть аккаунт?",
                style: TextStyle(color: Color.fromRGBO(3, 0, 0, 1)),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              child: const Text("Войдите в него",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(244, 249, 61, 164))),
            )
          ],
        ),
      ),
    );
  }
}