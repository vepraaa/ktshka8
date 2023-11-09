import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 251, 199, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(244, 251, 149, 205),
        title: const Text('Главная страница',
        style: TextStyle(
          color: Color.fromARGB(244, 249, 61, 164),
        ),),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              icon: const Icon(Icons.logout))
        ],
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Meow",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(244, 249, 61, 164),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
