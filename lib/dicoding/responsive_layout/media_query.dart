import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Implement Media Query Size",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Screen width: ${screenSize.width.toStringAsFixed(2)}',
          style: const TextStyle(
            color: Colors.white, fontSize: 18,
          ),
          textAlign: TextAlign.center,
          ),
          Text('Screen width: $orientation',
          style: const TextStyle(
            color:  Colors.white, fontSize: 18,
          ),
          textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}