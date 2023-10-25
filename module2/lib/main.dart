import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modul_2/app/modules/payment/controllers/payment_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<PaymentController>(PaymentController());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
