import 'package:flutter/material.dart';
import 'package:flutter_app/dicoding/list_view/home_page.dart';
// import 'package:flutter_app/dicoding/list_view/widget/list_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View Function",
      theme: ThemeData(
        
      ),
      home: const HomePage(),
    );
  }
}