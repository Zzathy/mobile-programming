import 'package:get/get.dart';
import 'package:modul_2/app/modules/payment/bindings/payment_binding.dart';
import 'package:modul_2/app/modules/payment/views/payment.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PAYMENT;

  static final routes = [
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const MyPaymentView(),
      binding: PaymentBinding(),
    ),
  ];
}
