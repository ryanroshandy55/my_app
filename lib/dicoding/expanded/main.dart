import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Expanded Function",
      home: ExpandedFlexiblePage(),
    );
  }
}



class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Expanded(flex: 2, child: Container(color: Colors.red,),),
        Expanded(child: Container(color: Colors.orange,),),
        Expanded(child: Container(color: Colors.yellow,),),
        Expanded(child: Container(color: Colors.green,),),
        Expanded(child: Container(color: Colors.blue,),),
        Expanded(child: Container(color: Colors.indigo,),),
        Expanded(child: Container(color: Colors.purple,),),
        Expanded(child: Container(color: Colors.blue),),
      ],
    );
  }
}

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage ({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                  ExpandedWidget(),
                  FlexibleWidget(),  
              ],
            ),
            Row(
              children: [
                  ExpandedWidget(),
                  ExpandedWidget(),  
              ],
            ),
            Row(
              children: [
                  FlexibleWidget(),  
                  ExpandedWidget(),
              ],
            ),
            Row(
              children: [
                  FlexibleWidget(),
                  FlexibleWidget(),  
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget ({super.key});

  @override
  Widget build(BuildContext context){
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
          ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget{
  const ExpandedWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),

        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Expanded', 
            style: TextStyle(
              color: Colors.tealAccent, fontSize: 24
              ),
            ),
          ),
      ),
    );
  }
}