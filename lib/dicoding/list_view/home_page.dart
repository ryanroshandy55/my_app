import 'package:flutter/material.dart';
import 'package:flutter_app/dicoding/list_view/widget/grid_view.dart';
import 'package:flutter_app/dicoding/list_view/widget/list_view.dart';
import 'package:flutter_app/dicoding/list_view/widget/single_child_scroll_view.dart';
void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _menus = const [
    "SingleChildScrollView + Column",
    "ListView",
    "GridView"
  ];
  final List<String> _dataName = const [
    'Pasar Tanah Abang',
    'Pasar Baru',
    'Pasar Senen',
    'Pasar Mayestik',
    'Pasar Induk Kramat Jati',
    'Pasar Cipulir',
    'Pasar Minggu',
    'Pasar Pasir Kaliki',
    'Pasar Cikini',
    'Pasar Beringharjo',
    'Pasar Klewer',
    'Pasar Gede',
    'Pasar Johar',
    'Pasar Rawa Belong',
    'Pasar Modern BSD',
    'Pasar Pagi Mangga Dua',
    'Pasar Turi',
    'Pasar Kebayoran Lama',
    'Pasar Banjarsari',
    'Pasar Palembang Indah'
  ];
  
  int _indexPage = 0;
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: Text("Scrollable Widget - ${ _menus[ _indexPage]}", 
          style: const TextStyle(color: Colors.white),),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            for (String menu in _menus)
            ListTile(
              title: Text(menu),
              onTap:() {
                setState(() {
                  _indexPage = _menus.indexOf(menu);
                });
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: _indexPage,
        children: [
          SingleChildScrollViewWidget(dataName: _dataName),
          ListViewWidget(dataName: _dataName),
          GridViewWidget(dataName: _dataName),
        ],
      ),
    );
  }
}