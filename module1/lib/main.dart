import 'package:aquascape/detail.dart';
import 'package:aquascape/menu.dart';
import 'package:aquascape/payment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyPayment());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 392,
            child: Image.asset(
              "assets/plant2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.white,
                width: 392,
                height: 271,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Mozza Aquatic"),
                    Text("Life Better"),
                    Text("When you are aquascaping"),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up)),
                    Text("Swipe Up")
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
