import 'package:flutter/material.dart';
import './Buttons.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool orient = MediaQuery.of(context).orientation == Orientation.landscape;

    // TODO: implement build
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
        childAspectRatio: orient == true ?  5 : 1,
      ),
      children: <Widget>[
        Buttons("clear"),
        Buttons("AC"),
        Buttons("."),
        Buttons("="),
        Buttons("9"),
        Buttons("%"),
        Buttons("+"),
        Buttons("-"),
        Buttons("8"),
        Buttons("7"),
        Buttons("6"),
        Buttons("x"),
        Buttons("5"),
        Buttons("4"),
        Buttons("3"),
        Buttons("/"),
        Buttons("2"),
        Buttons("1"),
        Buttons("0"),
        Buttons(","),
      ],
      shrinkWrap: true,
    );
  }
}
