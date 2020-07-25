import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List pages = [
    Center(
      child: Text('Page1'),
    ),
    Center(
      child: Text('Page2'),
    ),
    Center(
      child: Text('Page3'),
    ),
    Center(
      child: Text('Page4'),
    ),
    Center(
      child: Text('Page5'),
    ),
    Center(
      child: Text('Page6'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            ListTile(
              title: Text('Item 4'),
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            ListTile(
              title: Text('Item 5'),
              onTap: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
            ListTile(
              title: Text('Item 6'),
              onTap: () {
                setState(() {
                  _currentIndex = 5;
                });
              },
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
