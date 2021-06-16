import 'package:estateagent/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/default_tab_bar.dart';
import 'components/top_text.dart';

class AnalyzeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Stack(
          children: [
            Center(
              child: Container(
                  child: Column(
                children: [TopText(), DefaultTabBar()],
              )),
            ),
          ],
        ));
  }
}
// Expanded(
// child: Padding(
// padding: EdgeInsets.only(top: 20),
// child: Container(
// height: 350,
// color: Colors.white,
// ),
// ))
