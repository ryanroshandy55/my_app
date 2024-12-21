import 'package:flutter/material.dart';

// void main() => runApp(const GridViewList());

class GridViewWidget extends StatelessWidget {
  final List<String> dataName;
  const GridViewWidget({
    Key? key, required this.dataName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (
        crossAxisCount: 2,
      ),
      children: [
        for (String data in dataName)
        ListTile(
          title: Text(data),

        ),
      ],
    );
  }
}