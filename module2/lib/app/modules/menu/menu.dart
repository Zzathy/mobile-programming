import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

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
      home: const Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 183,
              child: Text(
                "Good Morning",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ),
            Text(
              "Izza Ihsan Fathony",
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1)),
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      size: 40,
                    )),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                child: const Text("Search..."),
              ),
              Container(
                color: Colors.green,
                width: 150,
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
              Text(
                "See All",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.grey,
                width: 50,
                height: 50,
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        "assets/plant.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text("Betta")
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                color: Colors.grey,
                width: 50,
                height: 50,
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        "assets/plant.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text("Betta")
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                color: Colors.grey,
                width: 50,
                height: 50,
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        "assets/plant.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text("Betta")
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                color: Colors.grey,
                width: 50,
                height: 50,
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        "assets/plant.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text("Betta")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/plant.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Text("Anubias Nana"),
                  const Text(
                    "Rp45.000",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/plant.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Text("Anubias Nana"),
                  const Text(
                    "Rp45.000",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/plant.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Text("Anubias Nana"),
                  const Text(
                    "Rp45.000",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/plant.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Text("Anubias Nana"),
                  const Text(
                    "Rp45.000",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/plant.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Text("Anubias Nana"),
                  const Text(
                    "Rp45.000",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          "assets/plant.jpg",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Text("Anubias Nana"),
                  const Text(
                    "Rp45.000",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.8),
            ),
            width: 250,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Column(
                    children: [Icon(Icons.house_outlined), Text("Home")],
                  ),
                  backgroundColor: Colors.black.withOpacity(0),
                  foregroundColor: Colors.grey,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Column(
                    children: [Icon(Icons.favorite_border), Text("Wishlist")],
                  ),
                  backgroundColor: Colors.black.withOpacity(0),
                  foregroundColor: Colors.grey,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Column(
                    children: [Icon(Icons.shopping_bag_outlined), Text("Cart")],
                  ),
                  backgroundColor: Colors.black.withOpacity(0),
                  foregroundColor: Colors.grey,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Column(
                    children: [Icon(Icons.person_2_outlined), Text("Profile")],
                  ),
                  backgroundColor: Colors.black.withOpacity(0),
                  foregroundColor: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {},
      //       child: Column(
      //         children: [Icon(Icons.house_outlined), Text("Home")],
      //       ),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {},
      //       child: Column(
      //         children: [Icon(Icons.favorite_border), Text("Wishlist")],
      //       ),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {},
      //       child: Column(
      //         children: [Icon(Icons.shopping_bag_outlined), Text("Cart")],
      //       ),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {},
      //       child: Column(
      //         children: [Icon(Icons.person_2_outlined), Text("Profile")],
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
