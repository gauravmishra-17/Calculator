import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String operation;
  final VoidCallback onTap;
  Buttons(this.operation, {this.onTap});
  @override
  State<StatefulWidget> createState() => _Buttons();
}

class _Buttons extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(widget.operation, style: TextStyle(fontSize: 20.0)),
      textColor: Colors.white,
      color: Colors.black,
      onPressed: widget.onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      highlightColor: Colors.black,
    );
  }
}
 // String newSymbol = (symbol == "+")
        // ? "-"
        // : (symbol == "-") ? "+" : (symbol == "x") ? "/" : "x";
