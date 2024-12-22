import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Expanded Function",
      home: Rainbow(),
    );
  }
}

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Expanded(child: Container(color: Colors.red,),),
        Expanded(child: Container(color: Colors.orange,),),
        Expanded(child: Container(color: Colors.yellow,),),
        Expanded(child: Container(color: Colors.green,),),
        Expanded(child: Container(color: Colors.blue,),),
        Expanded(child: Container(color: Colors.indigo,),),
        Expanded(child: Container(color: Colors.purple,),),
      ],
    );
  }
}