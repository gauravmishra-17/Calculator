import 'package:flutter/material.dart';
import './grid.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.black38,
          ),
        ),
        Container(
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
      ],
    );
  }
}
