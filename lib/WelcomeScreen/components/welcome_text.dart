import 'package:delayed_display/delayed_display.dart';
import 'package:estateagent/SignInScreen/SigninScreen.dart';
import 'package:estateagent/WelcomeScreen/components/welcome_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      fadingDuration: Duration(milliseconds: 600),
      slidingBeginOffset: const Offset(1.0, 0.0),
      child: Container(
        padding: EdgeInsets.all(38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Xoş\n' + 'Gelmisiniz',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'App den hezz alin Kenan mellim boba duzeldecem baslangicda biraz fikirlesim gesey olacag',
              style: TextStyle(
                fontSize: 16,
                color: kTextColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            WelcomeButton(
              topEvent: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninScreeen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
