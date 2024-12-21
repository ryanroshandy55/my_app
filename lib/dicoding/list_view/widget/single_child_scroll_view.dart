import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget{
  final List<String> dataName;

  const SingleChildScrollViewWidget ({
    Key? key, required this.dataName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
      return Column(
        children: [
          for (String data in dataName)
            ListTile(
              title: Text(data),
            ),
        ],
      );
    // );
  }
} 