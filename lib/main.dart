import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktshka8/app/data/services/api_service.dart';
import 'package:ktshka8/app/data/services/auth_service.dart';
import 'package:ktshka8/app/data/services/storage_service.dart';

import 'app/routes/app_pages.dart';

void main() async{ 
  await initServices();
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => ApiService().init());
  await Get.putAsync(() => AuthService().init());
}