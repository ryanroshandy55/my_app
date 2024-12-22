import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DynamicList',
      theme: ThemeData(),
      home: const DynamicListSeparated(),
    );
  }
}

class DynamicList extends StatelessWidget{
  const DynamicList({super.key});

  final List<int> numberList = const <int> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
              '$number', // Ditamplilkan sesuai item
              style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList(),
      ),
    );    
  }
}

class DynamciListBuilder extends StatelessWidget{
  const DynamciListBuilder ({super.key});

  final List<int> numberList = const <int> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
          );
        }
      ),
    );
  }
}


// ListView.separator used for showing item list that separated by al separator line
// We must add separator builder that separate
class DynamicListSeparated extends StatelessWidget {
  const DynamicListSeparated ({super.key});

  final List<int> numberList = const <int> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 15, 65, 106),
              border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
          );
        },separatorBuilder: (BuildContext context, int index) {
          if (index % 2 ==1){
            return const Divider(
              thickness: 10,
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}