import 'package:estateagent/Models/Elan.dart';
import 'package:flutter/material.dart';

class ResultFound extends StatelessWidget {
  const ResultFound({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 24,
        left: 24,
        top: 24,
        bottom: 12,
      ),
      child: Row(
        children: [
          Text(
            '${demoHomelist.length}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8),
          Text(
            "Result found",
            style: TextStyle(
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
