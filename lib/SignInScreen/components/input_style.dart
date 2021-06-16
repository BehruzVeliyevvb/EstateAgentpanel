import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class InputStyle extends StatelessWidget {
  const InputStyle({
    @required this.text,
    this.onEditingComplete,
    Key key,
  }) : super(key: key);
  final String text;
  final Function onEditingComplete;
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      fadingDuration: Duration(milliseconds: 600),
      slidingBeginOffset: const Offset(1.0, 0.0),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: TextField(
          decoration: InputDecoration(
            labelText: text,
            hoverColor: kTextColor,
          ),
          onEditingComplete: onEditingComplete,
        ),
      ),
    );
  }
}
