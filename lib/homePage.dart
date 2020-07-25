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
      drawer: Theme(
        data: Theme.of(context).copyWith(
          // Set the transparency here
          canvasColor: Colors
              .transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
        ),
        child: Drawer(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: DrawerHeader(
                child: Text(
                  'Carry Vai',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffe63946),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xfff1faee),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xfff1faee),
                ),
                child: Center(
                  child: Text(
                    'Home Page',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffe63946),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
            )
          ],
        )
            /*ListView(
            children: [
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 3'),
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 4'),
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 5'),
                onTap: () {
                  setState(() {
                    _currentIndex = 4;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 6'),
                onTap: () {
                  setState(() {
                    _currentIndex = 5;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),*/
            ),
      ),
      body: pages[_currentIndex],
    );
  }
}
