import 'package:flutter/material.dart';
import './Buttons.dart';

class ButtonsContainer extends StatelessWidget {
  final Function updateText;
  ButtonsContainer(this.updateText);
  List<String> values = [
    "clear",
    "AC",
    ".",
    "=",
    "9",
    "%",
    "+",
    "-",
    "8",
    "7",
    "6",
    "x",
    "5",
    "4",
    "3",
    "/",
    "2",
    "1",
    "0",
    ",",
  ];
  @override
  Widget build(BuildContext context) {
    bool orient = MediaQuery.of(context).orientation == Orientation.landscape;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
        childAspectRatio: orient == true ? 5 : 1,
      ),
      itemBuilder: (context, index) {
        return Buttons(values[index], onTap: () {
          updateText(values[index]);
        });
      },
      itemCount: values.length,
      shrinkWrap: true,
    );
  }
}
