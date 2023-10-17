import 'package:flutter/material.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Detail",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
              "Details",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_border_rounded)),
          ],
        ),
      ),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Anubias Nana",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 125,
                              child: Text(
                                "Rp45.000",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("4.8(237 Reviews)")
                          ],
                        )
                      ],
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus mollis nunc, sit amet dapibus nunc ornare a. Ut egestas fermentum nunc vitae consequat. Nunc hendrerit erat a est gravida, at rhoncus massa gravida. Suspendisse ultricies nec est quis ultrices. Vestibulum in sagittis libero. Mauris nec tempus tellus."),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.withOpacity(0.1)),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.indeterminate_check_box_outlined,
                                  color: Colors.green,
                                ),
                              ),
                              Text("1"),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_box,
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            width: 100,
                            height: 45,
                            child: Center(
                              child: Text(
                                "Add to cart",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
