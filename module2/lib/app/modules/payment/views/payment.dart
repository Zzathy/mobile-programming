import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_2/app/modules/payment/controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyPaymentView();
  }
}

class MyPaymentView extends StatelessWidget {
  const MyPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PaymentPage();
  }
}

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  get _paymentController => PaymentController.paymentController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            const Text(
              "Payment",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            const Text(
              "Payment",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Payment Method : Bank BCA"),
              const Text("Account Number : 1234"),
              const Text("Total : Rp1.000.000,00"),
              const SizedBox(
                height: 30,
              ),
              _paymentController.imageFile == null
                  ? Container(
                      height: 300,
                      width: 250,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage(
                                  "lib/app/data/images/text_image_background.jpg"),
                              fit: BoxFit.cover)),
                    )
                  : Container(
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(
                                  File(_paymentController.imageFile!.path)))),
                    ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () async {
                          await _paymentController.pickImageFileFromGallery();
                          setState(() {
                            _paymentController.imageFile;
                          });
                        },
                        icon: const Icon(
                          Icons.image,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () async {
                          await _paymentController.pickImageFileFromCamera();
                          setState(() {
                            _paymentController.imageFile;
                          });
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 30,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  width: 100,
                  height: 45,
                  child: const Center(
                    child: Text(
                      "Continue Shopping",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
