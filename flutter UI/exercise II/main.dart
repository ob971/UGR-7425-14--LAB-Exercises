import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'Cart',
            style: TextStyle(fontSize: 30, color: Colors.yellow),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 201, 200, 195),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.shopping_cart),
                  Column(
                    children: [
                      Text(
                        'Shopping Cart',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        'Verify your quantity and check out',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Column(
                children: [
                  Card(
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          width: 12,
                          image: AssetImage('lib/image/im.png'),
                        
                        ),
                        Column(
                          children: [Text('name'), Text('price')],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                            ),
                            Text("1"),
                            Icon(Icons.remove)
                          ],
                        )
                      ],
                    ),
                  ),
                  ItemsList(
                    name: "Anger Hair",
                    price: "23",
                    image: 'lib/image/im.png',
                  ),
                ],
              ),
              BottomSheet(
                  onClosing: () {},
                  builder: (BuildContext context) {
                    return Container(
                      child: Column(
                        children: [
                          const Text('Sub Total               60.98'),
                          const Text('Tax                    6.10'),
                          Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 253, 99, 122),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Check Out     67.89",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ))
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class ItemsList extends StatelessWidget {
  final name;
  final price;
  final image;

  const ItemsList(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(image),
            width: 10,
            height: 20,
          ),
          Column(
            children: [Text(name), Text(price)],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                size: 20,
              ),
              Text("1"),
              Icon(Icons.remove)
            ],
          )
        ],
      ),
    );
  }
}
