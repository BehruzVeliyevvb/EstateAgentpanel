import 'package:delayed_display/delayed_display.dart';
import 'package:estateagent/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      child: DelayedDisplay(
        delay: Duration(milliseconds: 100),
        fadingDuration: Duration(milliseconds: 600),
        slidingBeginOffset: const Offset(1.0, 0.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              color: kPrimaryColor,
            ),
            width: 130,
            height: 100,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
