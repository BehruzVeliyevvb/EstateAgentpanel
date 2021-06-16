import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class AnalyzeCard extends StatelessWidget {
  const AnalyzeCard({
    @required this.title,
    @required this.color,
    @required this.count,
    Key key,
  }) : super(key: key);
  final String title;
  final String count;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DelayedDisplay(
        delay: Duration(milliseconds: 100),
        fadingDuration: Duration(milliseconds: 600),
        slidingBeginOffset: Offset(1.0, 0.0),
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                count,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
