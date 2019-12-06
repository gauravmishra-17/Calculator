import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  TextEditingController control = new TextEditingController();
  String operation;
  Calculation(String operation) {
    this.operation = operation;
  }
  @override
  State<StatefulWidget> createState() {
   
    // TODO: implement createState
    return _Calculation();
  }
}

class _Calculation extends State<Calculation> {
  String z = "";
  void screenUpdate() {
    setState(() {
      print("new state widget");
      z = widget.operation;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenUpdate();
    // TODO: implement build
    return Text("$z");
  }
}
