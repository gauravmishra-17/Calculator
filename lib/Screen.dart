import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text("0"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("AC"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("x"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("%"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text("7"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("8"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("9"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("+"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text("4"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("5"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("6"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("-"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text("1"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("2"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("3"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("="),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
