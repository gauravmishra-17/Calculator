import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  String operation;
  Buttons(String operation) {
    this.operation = operation;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Buttons();
  }
}

class _Buttons extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      child: Text(widget.operation, style: TextStyle(fontSize: 20.0)),
      textColor: Colors.white,
      color: Colors.black,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      highlightColor: Colors.black,
      highlightElevation: 100,
    );
  }
}
