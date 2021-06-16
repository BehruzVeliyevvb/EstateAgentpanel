import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/login_button.dart';
import 'components/top_style.dart';
import 'components/input_style.dart';

class SigninScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => node.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTap(),
              InputStyle(
                text: 'Isim',
                onEditingComplete: () => node.nextFocus(),
              ),
              InputStyle(
                text: 'Şifre',
                onEditingComplete: () => node.unfocus(),
              ),
              SizedBox(height: size.height * 0.04),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
