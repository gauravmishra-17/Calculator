import 'package:flutter/material.dart';
import './ButtonsContainer.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String currentValue = "";
  String presentValue = "";
  String finalValue = "0";
  String previousValue = "0";
  int a = 0;
  List<String> operators = ["+", "-", "x", "/"];
  List<String> digits = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  String symbol = "+";
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
            child: Text(
              currentValue,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          flex: orient == true ? 2 : 1,
          child: Container(
            color: Colors.black38,
            child: Text(
              finalValue,
              style: TextStyle(color: Colors.white),
            ),
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
                  offset: Offset(0, 7),
                ),
              ],
            ),
            child: ButtonsContainer(_updateText),
          ),
        ),
      ],
    );
  }

  void _updateText(String value) {
    setState(() {
      if (operators.contains(value)) {
        symbol = value;
        presentValue = "";
        previousValue = "0";
        currentValue = currentValue + value;
      } else if (value == "=") {
        _updateResult(presentValue, value);
        presentValue = "";
      } else if (value == "AC") {
        a = 0;
        finalValue = "0";
        presentValue = "";
        currentValue = "";
        previousValue = "0";
        symbol = "+";
      } else {
        presentValue = presentValue + value;
        print("presentValue" + presentValue);
        currentValue = currentValue + value;
        print("currentValue" + currentValue);

        String newSymbol = "";
        if (symbol == "+") {
          print("symbol +");
          newSymbol = "-";
        } else {
          print("symbol -");
          newSymbol = "+";
        }
        _updateResult(previousValue, newSymbol);
        previousValue = presentValue;
        print("previous value now  " + previousValue);
        print("present value now  " + presentValue);
        _updateResult(presentValue, symbol);
      }

      finalValue = a.toString();
      print("final Value " + finalValue);
    });
  }

  void _updateResult(String pvalue, String value) {
    print("_update result  " + pvalue + " " + value);
    if (value == operators[0])
      a = a + int.parse(pvalue);
    else if (value == operators[1])
      a = a - int.parse(pvalue);
    else if (value == operators[2])
      a = a * int.parse(pvalue);
    else if (value == operators[3]) a = (a / int.parse(pvalue)) as int;
  }
}
