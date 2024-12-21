import 'package:flutter/material.dart';

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget> [
//           Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: const Center(
//               child: Text(
//                 '1',
//                 style: TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//           Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: const Center(
//               child: Text(
//                 '2',
//                 style: TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//           Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: const Center(
//               child: Text(
//                 '3',
//                 style: TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//           Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: const Center(
//               child: Text(
//                 '4',
//                 style: TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//           Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: const Center(
//               child: Text(
//                 '5',
//                 style: TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ListViewWidget extends StatelessWidget {
  final List<String> dataName;
  const ListViewWidget({
    Key? key, required this.dataName
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        for (String data in dataName)
        ListTile(
          title: Text(data),
        ),
      ],
    );
  }
}