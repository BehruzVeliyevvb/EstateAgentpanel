import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key key, @required this.topEvent}) : super(key: key);
  final GestureTapCallback topEvent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: topEvent,
      child: DelayedDisplay(
        delay: Duration(milliseconds: 100),
        fadingDuration: Duration(milliseconds: 600),
        slidingBeginOffset: const Offset(1.0, 0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: kPrimaryColor,
          ),
          width: 150,
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Başla!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
