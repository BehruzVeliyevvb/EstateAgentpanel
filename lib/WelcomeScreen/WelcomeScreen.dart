import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/top_banner.dart';
import 'components/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(),
            WelcomeText(),
          ],
        ),
      ),
    );
  }
}
