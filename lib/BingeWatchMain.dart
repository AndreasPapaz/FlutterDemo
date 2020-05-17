import 'package:flutter/material.dart';
import 'PlaceholderWidget.dart';

class BingeWatchMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BingeWatchMain();
  }
}

class _BingeWatchMain extends State<BingeWatchMain> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.amber)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("TEST")),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
      ),
    );
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}