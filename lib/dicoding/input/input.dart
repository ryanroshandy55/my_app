import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
    const MyApp ({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const MaterialApp (
            title: 'Input',
            home: FirstScreen(),
        );
    }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

// class _FirstScreenState extends State<FirstScreen> {
//      String _name = '';
    
//      @override
//      Widget build(BuildContext context) {
//          return Scaffold(
//             appBar: AppBar(
//               title: const Text('First Screen'),
//             ),
//             body: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                    children: [
//                        TextField(
//                           decoration: const InputDecoration(
//                             hintText: 'Write your name here...',
//                             labelText: 'Your Name',
//                           ),
//                           onChanged: (String value) {
//                             setState(() {
//                                  _name = value;
//                             });
//                           },
//                        ),
//                        const SizedBox(height: 20),
//                        ElevatedButton(
//                           child: const Text('Submit'),
//                           onPressed: () {
//                             showDialog(
//                                      context: context,
//                                      builder: (context) {
//                                         return AlertDialog(
//                                           content: Text('Hello, $_name'),
//                                         );
//                                      });
//                           },
//                        )
//                    ],
//               ),
//             ),
//          );
//      }
// }

class _FirstScreenState extends State<FirstScreen> {
   TextEditingController _controller = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
             children: [
               TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Write your name here gentlemen',
                    labelText: 'Your Name',
                  ),
               ),
               const SizedBox(height: 20),
               ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    showDialog(
                         context: context,
                         builder: (context) {
                            return AlertDialog(
                              content: Text('Hello, ${_controller.text}'),
                            );
                         });
                  },
               )
             ],
          ),
        ),
     );
   }

   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
}

