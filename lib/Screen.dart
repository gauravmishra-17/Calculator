import 'package:flutter/material.dart';
import './grid.dart';
import './Calculation.dart';

class Screen extends StatelessWidget {
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
            child: Calculation("0 "),
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
            child: Grid(),
          ),
        ),
      ],
    );
  }
}
