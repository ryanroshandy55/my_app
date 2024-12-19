import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'My first flutter program',
      theme: ThemeData(),
      home: const HelloWorld(),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        shadowColor: Colors.grey,
          title: const Text('Hello World', 
            style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      body: const Column(
        children: <Widget> [Text("Hello Everyone!"),],
      ),
    );
  }
}