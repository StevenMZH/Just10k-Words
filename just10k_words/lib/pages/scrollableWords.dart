import 'package:flutter/material.dart';

class ScrollableWords extends StatefulWidget {
  @override
  _ScrollableWordsState createState() => _ScrollableWordsState();
}

class _ScrollableWordsState extends State<ScrollableWords> {
  double _verticalPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollable Word"),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          setState(() {
            _verticalPosition += details.primaryDelta!;
          });
        },
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Transform.translate(
              offset: Offset(0, _verticalPosition),
              child: Text(
                'Deslízame',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
