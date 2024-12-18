import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textTheme: GoogleFonts.audiowideTextTheme(Theme.of(context).textTheme),
      ),
      home: const MyHomePage(),
    );
  }
}

class Kitten {
  const Kitten({required this.name, required this.description, required this.age, required this.imageUrl});

  final String name;
  final String description;
  final int age;
  final String imageUrl;
}

final String server = 
    defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2" : "localhost";

final List<Kitten> _kittens = <Kitten>[
  Kitten(
    name: 'Mittens',
    description: 'Tge pinnacle of cats. When Mittens sits in your lap, '
      'you feek like royalty',
    age: 11,
    imageUrl: 'http://$server:8000/kitten0.jpg'),
  Kitten(
    name: 'Fluffy',
    description: 'World\'s cutest kitten. Seriously. We did the research.',
    age: 3,
    imageUrl: 'http://$server:8000/kitten1.jpg'),
  Kitten(
    name: 'Scooter',
    description: 'Chases string faster than 9/10 competing kittens.',
    age: 2,
    imageUrl: 'http://$server:8000/kitten2.jpg'),
  Kitten(
    name: 'Steve',
    description: 'Steve is cool and just kind of hangs out',
    age: 4,
    imageUrl: 'http://$server:8000/kitten3.jpg'),
];


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Widget _dialogBuilder(BuildContext context, Kitten kitten) {
    return SimpleDialog(
      children: [
        Image.network(
          kitten.imageUrl,
          fit: BoxFit.fill,
          ),
        ],
      );
    }

  Widget _listItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context, 
        builder: (context) => _dialogBuilder(context, _kittens[index])),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        alignment: Alignment.centerLeft,
        child: Text(_kittens[index].name,
          style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        shadowColor: Colors.grey,
          title: Text('Available Kittens', 
            style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      body: ListView.builder(
        itemCount: _kittens.length,
        itemExtent: 60.0,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}