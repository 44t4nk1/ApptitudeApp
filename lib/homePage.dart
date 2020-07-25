import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List pages = [
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Page1',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Page2',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Page3',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Page4',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Page5',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Page6',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(
              0xff000000), //or any other color you want. e.g Colors.blue.withOpacity(0.5)
        ),
        child: Drawer(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, top: 40, right: 16),
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Carry Vai',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffe63946),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xffe63946)),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xff00000),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffe63946)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color:
                      _currentIndex == 0 ? Color(0xffe63946) : Color(0xff00000),
                ),
                child: Center(
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 0
                          ? Color(0xff000000)
                          : Color(0xffe63946),
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
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffe63946)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color:
                      _currentIndex == 1 ? Color(0xffe63946) : Color(0xff00000),
                ),
                child: Center(
                  child: Text(
                    'Image Fetcher',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 1
                          ? Color(0xff000000)
                          : Color(0xffe63946),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffe63946)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color:
                      _currentIndex == 2 ? Color(0xffe63946) : Color(0xff00000),
                ),
                child: Center(
                  child: Text(
                    'Draw',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 2
                          ? Color(0xff000000)
                          : Color(0xffe63946),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffe63946)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color:
                      _currentIndex == 3 ? Color(0xffe63946) : Color(0xff00000),
                ),
                child: Center(
                  child: Text(
                    'Fourth',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 3
                          ? Color(0xff000000)
                          : Color(0xffe63946),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffe63946)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color:
                      _currentIndex == 4 ? Color(0xffe63946) : Color(0xff00000),
                ),
                child: Center(
                  child: Text(
                    'Fifth',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 4
                          ? Color(0xff000000)
                          : Color(0xffe63946),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.only(left: 2, right: 2),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xffe63946)),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color:
                      _currentIndex == 5 ? Color(0xffe63946) : Color(0xff00000),
                ),
                child: Center(
                  child: Text(
                    'Sixth',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 5
                          ? Color(0xff000000)
                          : Color(0xffe63946),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 5;
                });
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
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
