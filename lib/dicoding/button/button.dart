import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Button Exercise',
      theme: ThemeData(),
      home: const FirstScreen(),
    );
  }
}

class Button extends StatelessWidget {
  const Button ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Button Example"),
      ),
      body: SafeArea (
        child: Column(
          children: <Widget>[
            
            // ignore: avoid_unnecessary_containers
            Container(
            margin: const EdgeInsets.only(top: 16.0),
              child: const Text("Hello All This are some example of button variant in flutter, Happy Learning!",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    child: const Text("Button"),
                    onPressed: () {
                      // Aksi ketika button diklik
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                    child: TextButton(
                      child: const Text("Text Button"),
                        onPressed: () {
                        // Aksi ketika button diklik
                        },
                    ),
                  ),
                 Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: OutlinedButton(
                    child: const Text("Outlined Button"),
                    onPressed: () {
                      // Aksi ketika button diklik
                    },
                  ),
                ),
              ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: IconButton(
                      icon: const Icon(Icons.volume_up),
                      tooltip: 'Increase volume by 10',
                      onPressed: () {
                        //Aksi ketika button diklik
                      }, 
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: IconButton(
                      icon: const Icon(Icons.volume_down),
                      tooltip: 'Decrease volume by 10',
                      onPressed: () {
                        //Aksi ketika button diklik
                      }, 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: DropdownButton<String> (
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
          DropdownMenuItem<String>(
            value: 'Swift',
            child: Text('Swift'),
          ),
        ],
        
        value: language,
        hint: const Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
    );
  }
}