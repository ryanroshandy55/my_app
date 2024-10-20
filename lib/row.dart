import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  // const FirstScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      // body: const Center(
      //   child: Text('Hello world!'),
      // ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.share),
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down),
        ],
      ),
      // Container(
      //   decoration: BoxDecoration(
      //     color: Colors.red,
      //     shape: BoxShape.circle,
      //     border: Border.all(color:Colors.black12, width: 3),
      //     borderRadius: BorderRadius.circular(10),
      //     // boxShadow: [
      //     //   BoxShadow(
      //     //     color: Colors.black,
      //     //     offset: Offset(3, 6),
      //     //     blurRadius: 10,
      //     //   ),
      //     // ],
      //   ),
      //   // color: Colors.blue,
      //   // ? Width 200px and height 100px
      //   // width: 200,
      //   // height: 100,
      //   margin: const EdgeInsets.all(20),
      //   padding: const EdgeInsets.all(20),
      //   child: const Text(
      //     'Hi', 
      //   style: TextStyle(fontSize: 40),
      //   ),
      //   // Center(child: const Text("Hello world")),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      
    );
  }
}



// class Heading extends StatelessWidget {
//   const Heading({super.key, required this.text});

//   final String text;

//   @override
//   Widget build(BuildContext context){
//     return Text(
//       text,
//       style: const TextStyle(
//         fontSize: 24.0,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }


// class BiggerText extends StatefulWidget {

//   final String text;
//   const BiggerText({super.key, required this.text});

//   @override
//   BiggerTextState createState() => BiggerTextState();
// }

// class BiggerTextState extends State<BiggerText> {
//   double _textSize = 16.0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           widget.text, style: TextStyle(fontSize: _textSize)),
//         ElevatedButton(
//           child: const Text("Perbesar"),
//           onPressed: () {
//             setState(() {
//               _textSize = 32.0;
//             });
//           },
//         )
//       ],
//     );
//   }
// }
