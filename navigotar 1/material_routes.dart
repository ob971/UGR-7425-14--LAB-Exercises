import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Navigation Demo',
     home: ScreenOne(),
   );
 }
}

class ScreenOne extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Screen One"),
     ),
     body: Center(
       child: ElevatedButton(
           child: const Text("Next"),
           onPressed: () {
            
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => ScreenTwo()),
             );
           }
       ),
     ),
   );
 }
}

class ScreenTwo extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Screen Two"),
     ),
     body: Center(
       child: ElevatedButton(
           child: const Text("Back"), 
           onPressed: () {
             Navigator.pop(context);
           }
       ),
     ),
   );
 }
}