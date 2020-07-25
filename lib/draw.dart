import 'dart:ui' as ui;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CanvasPainting extends StatefulWidget {
  @override
  _CanvasPaintingState createState() => _CanvasPaintingState();
}

class _CanvasPaintingState extends State<CanvasPainting> {
  int randomNumber = 0;

  void initState() {
    Random random = new Random();
    randomNumber = random.nextInt(images.length);
    super.initState();
  }

  GlobalKey globalKey = GlobalKey();

  List images = ['rose.png', 'dab.png', 'sad.png', 'house.png'];

  List<TouchPoints> points = List();
  double opacity = 1.0;
  StrokeCap strokeType = StrokeCap.round;
  double strokeWidth = 3.0;
  Color selectedColor = Colors.white;

  Future<void> _pickStroke() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ClipOval(
          child: AlertDialog(
            backgroundColor: Colors.black,
            actions: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.clear,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  strokeWidth = 3.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 24,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  strokeWidth = 10.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 40,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  strokeWidth = 30.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 60,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  strokeWidth = 50.0;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _opacity() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ClipOval(
          child: AlertDialog(
            backgroundColor: Colors.black,
            actions: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.clear,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  opacity = 1.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.opacity,
                  size: 24,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  //most transparent
                  opacity = 0.1;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.opacity,
                  size: 40,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  opacity = 0.5;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.opacity,
                  size: 60,
                  color: Color(0xffe63946),
                ),
                onPressed: () {
                  //not transparent at all.
                  opacity = 1.0;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              RenderBox renderBox = context.findRenderObject();
              points.add(TouchPoints(
                  points: renderBox.globalToLocal(details.globalPosition),
                  paint: Paint()
                    ..strokeCap = strokeType
                    ..isAntiAlias = true
                    ..color = selectedColor.withOpacity(opacity)
                    ..strokeWidth = strokeWidth));
            });
          },
          onPanStart: (details) {
            setState(() {
              RenderBox renderBox = context.findRenderObject();
              points.add(TouchPoints(
                  points: renderBox.globalToLocal(details.globalPosition),
                  paint: Paint()
                    ..strokeCap = strokeType
                    ..isAntiAlias = true
                    ..color = selectedColor.withOpacity(opacity)
                    ..strokeWidth = strokeWidth));
            });
          },
          onPanEnd: (details) {
            setState(() {
              points.add(null);
            });
          },
          child: RepaintBoundary(
            key: globalKey,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/${images[randomNumber]}"),
                    height: 400,
                  ),
                ),
                CustomPaint(
                  size: Size.infinite,
                  painter: MyPainter(
                    pointsList: points,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffe63946)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.black,
                  ),
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, left: 35, right: 35),
                  child: Row(
                    children: [
                      IconButton(
                        color: Color(0xffe63946),
                        icon: Icon(Icons.brush),
                        tooltip: 'Stroke',
                        onPressed: () {
                          setState(() {
                            _pickStroke();
                          });
                        },
                      ),
                      IconButton(
                        color: Color(0xffe63946),
                        icon: Icon(Icons.opacity),
                        tooltip: 'Opacity',
                        onPressed: () {
                          setState(() {
                            _opacity();
                          });
                        },
                      ),
                      IconButton(
                        color: Color(0xffe63946),
                        icon: Icon(Icons.clear),
                        tooltip: "Erase",
                        onPressed: () {
                          setState(
                            () {
                              points.clear();
                            },
                          );
                        },
                      ),
                      IconButton(
                        color: Colors.red,
                        icon: colorMenuItem(Colors.red),
                        tooltip: 'Color',
                        onPressed: () {
                          setState(() {
                            selectedColor = Colors.red;
                          });
                        },
                      ),
                      IconButton(
                        color: Colors.green,
                        icon: colorMenuItem(Colors.green),
                        tooltip: 'Color',
                        onPressed: () {
                          setState(() {
                            selectedColor = Colors.green;
                          });
                        },
                      ),
                      IconButton(
                        color: Colors.pink,
                        icon: colorMenuItem(Colors.pink),
                        tooltip: 'Color',
                        onPressed: () {
                          setState(() {
                            selectedColor = Colors.pink;
                          });
                        },
                      ),
                      IconButton(
                        color: Colors.blue,
                        icon: colorMenuItem(Colors.blue),
                        tooltip: 'Color',
                        onPressed: () {
                          setState(() {
                            selectedColor = Colors.blue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget colorMenuItem(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          height: 36,
          width: 36,
          color: color,
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({this.pointsList});

  List<TouchPoints> pointsList;
  List<Offset> offsetPoints = List();

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < pointsList.length - 1; i++) {
      if (pointsList[i] != null && pointsList[i + 1] != null) {
        canvas.drawLine(pointsList[i].points, pointsList[i + 1].points,
            pointsList[i].paint);
      } else if (pointsList[i] != null && pointsList[i + 1] == null) {
        offsetPoints.clear();
        offsetPoints.add(pointsList[i].points);
        offsetPoints.add(Offset(
            pointsList[i].points.dx + 0.1, pointsList[i].points.dy + 0.1));

        canvas.drawPoints(
            ui.PointMode.points, offsetPoints, pointsList[i].paint);
      }
    }
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;
}

class TouchPoints {
  Paint paint;
  Offset points;
  TouchPoints({this.points, this.paint});
}
