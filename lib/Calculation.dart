import 'package:flutter/material.dart';

class Calculation extends StatelessWidget {
  String operation;
  Calculation(String operation) {
    this.operation = operation;
    print("constructor called");
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("$operation");
  }
}
