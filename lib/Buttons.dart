import 'package:flutter/material.dart';
import './Calculation.dart';

class Buttons extends StatefulWidget {
  Calculation c = new Calculation("0");

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
    //TextEditingController control = widget.c.control;
    //control=widget.operation as TextEditingController;
    return MaterialButton(
      child: Text(widget.operation, style: TextStyle(fontSize: 20.0)),
      textColor: Colors.white,
      color: Colors.black,
      onPressed: () {
        Calculation(widget.operation);
        print("presed button" + widget.operation);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      highlightColor: Colors.black,
    );
  }
}
