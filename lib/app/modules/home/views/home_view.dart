import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 211, 192, 251),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(244, 195, 167, 251),
        title: const Text(
          'Главная страница',
          style: TextStyle(
            color: Color.fromARGB(244, 158, 113, 249),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => controller.logout(),
              icon: const Icon(Icons.logout))
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.welcometext.value,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(244, 158, 113, 249),
            ),
          ),
        ),
      ),
    );
  }
}
