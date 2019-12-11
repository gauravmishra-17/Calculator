import 'package:flutter/material.dart';
import './grid.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String currentValue = "";
  @override
  Widget build(BuildContext context) {
    bool orient = MediaQuery.of(context).orientation == Orientation.landscape;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: orient == true ? 2 : 1,
          child: Container(
            color: Colors.black38,
            child: Text(
              currentValue,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Flexible(
          flex: orient == true ? 3 : 0,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            child: ButtonsContainer(_updateText),
          ),
        ),
      ],
    );
  }

  void _updateText(String value) {
    setState(() {
      currentValue = currentValue +value;
    });
  }
}
