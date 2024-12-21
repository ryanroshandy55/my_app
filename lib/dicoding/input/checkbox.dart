import 'package:flutter/material.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Checkbox",
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget{
  const FirstScreen ({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree, 
          onChanged: (bool? value) {
            setState(() {
              agree = value!;
            });
          },
        ),
        title: const Text('Aggree / Disagree'),
      ),
    );
  }
}