import 'package:flutter/material.dart';

import '../../constants.dart';

AppBar buildAppBar(BuildContext context, {String tittle}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: kPrimaryColor,
    brightness: Brightness.dark,
    elevation: 0,
    title: Text(
      tittle,
      style: TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          letterSpacing: 2),
    ),
    centerTitle: false,
  );
}
