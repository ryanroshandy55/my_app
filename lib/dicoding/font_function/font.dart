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
      theme: ThemeData(
        // Change default font for entire app
        // fontFamily: 'Audiowide',
      ),
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
              style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Audiowide',)),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text("Hello Everyone!", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24) ,),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text("My name is Ryan, nice too meet you!", textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
              ),
          ],
        ),
      ),
    );
  }
}