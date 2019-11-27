import 'package:flutter/material.dart';
import './Buttons.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
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
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
