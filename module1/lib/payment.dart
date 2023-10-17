import 'package:flutter/material.dart';

class MyPayment extends StatelessWidget {
  const MyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Payment",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const PaymentPage(),
    );
  }
}

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Text(
              "Payment",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            Text(
              "Payment",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text("Payment Method : Bank BCA"),
          Text("Account Number : 1234"),
          Text("Total : Rp1.000.000,00"),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              width: 100,
              height: 45,
              child: Center(
                child: Text(
                  "Continue Shopping",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
