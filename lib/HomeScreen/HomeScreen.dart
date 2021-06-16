import 'package:delayed_display/delayed_display.dart';
import 'package:estateagent/AnalyzeScreen/AnalyzeScreen.dart';
import 'package:estateagent/HomeScreen/components/body.dart';
import 'package:estateagent/ProfileScreen/ProfileScreen.dart';
import 'package:estateagent/SettingsScreen/SettingsScreen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItemIndex = 0;
  final List _children = [
    Body(),
    AnalyzeScreen(),
    SettingsScreen(),
    ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _children.elementAt(selectedItemIndex),
      bottomNavigationBar: DelayedDisplay(
        delay: Duration(milliseconds: 200),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
              color: kTabBArColor,
              borderRadius: BorderRadius.circular(80.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(40),
                  blurRadius: 6,
                  offset: const Offset(
                    0,
                    0,
                  ),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNavbar(Icons.home, 0, 'Home'),
              buildNavbar(Icons.analytics, 1, 'Analyze'),
              buildNavbar(Icons.settings, 2, 'Settings'),
              buildNavbar(Icons.person, 3, 'Profil'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavbar(
    IconData icons,
    int index,
    String name,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: DelayedDisplay(
        delay: Duration(milliseconds: 400 * index),
        slidingBeginOffset: const Offset(-1.0, 0),
        child: Container(
          padding: EdgeInsets.all(5.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color:
                index == selectedItemIndex ? kPrimaryColor : Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons,
                color: Colors.white,
                size: 21.0,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
