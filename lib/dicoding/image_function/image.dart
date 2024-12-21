import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image Function',
      home: FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen')
        ),
      body: Center(
        child: Image.asset('images/android.png', width: 200, height: 200),
      ),
    );
  }
}
          //   margin: const EdgeInsets.only(top: 16.0),
          //   child: Image.network(
          //     'https://picsum.photos/200/300',
          //     width: 200,
          //     height: 200,
          //   ),