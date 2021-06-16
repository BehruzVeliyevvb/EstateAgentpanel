import 'package:flutter/material.dart';

import 'filter_items.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomsheet();
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 24,
        ),
        child: Text(
          'Filters',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void _showBottomsheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        builder: (BuildContext context) {
          return Wrap(
            children: [
              FilterItems(),
            ],
          );
        });
  }
}
