import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      theme: ThemeData(useMaterial3: true),
      home : Scaffold(
        appBar: AppBar(title: const Text("Switch Example")),
        body: const Center(
          child: SwitchExample(),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget{
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState(); 
}

class _SwitchExampleState extends State<SwitchExample> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Switch(
        value: lightOn,
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}