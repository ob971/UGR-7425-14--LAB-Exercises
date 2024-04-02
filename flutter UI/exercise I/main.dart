import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.backup),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.upcoming_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            const Center(child: const Image(image: AssetImage('image/man.jpg'))),
            const Text(
              "text of the image",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [Icon(Icons.thumb_up), Text('0')],
                ),
                Row(
                  children: [Icon(Icons.circle), Text('0')],
                ),
                Row(
                  children: [Icon(Icons.share), Text('Share')],
                )
              ],
            ),
            Container(
              height: 250,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Essentials info'), Text('1 of 3 done ')],
                  ),
                  HorizontalLine(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.join_right_sharp,
                            color: Colors.blue,
                          ),
                          Text('Year, Make, Model,  VIn')
                        ],
                      ),
                      Icon(Icons.edit)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Year: 1975"),
                      Text("make: porchce"),
                      Text("Model: 1992"),
                      Text("Vin: 8924292834"),
                    ],
                  ), 
                  HorizontalLine(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.join_right_sharp,
                            color: Colors.blue,
                          ),
                          Text('Description')
                        ],
                      ),
                      Icon(Icons.edit)
                    ],
                  ),
                  HorizontalLine(
                    color: Colors.grey,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.join_right_sharp,
                            color: Colors.blue,
                          ),
                          Text('photos')
                          
                        ],
                      ),
                      Icon(Icons.edit)
                    ],
                  )
                  

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  final double height;
  final Color color;

  const HorizontalLine({
    Key? key,
    this.height = 1.0,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
    );
  }
}