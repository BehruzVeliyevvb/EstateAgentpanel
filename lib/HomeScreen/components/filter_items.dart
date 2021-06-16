import 'package:flutter/material.dart';

class FilterItems extends StatefulWidget {
  @override
  _FilterItemsState createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {
  var selectedRange = RangeValues(300, 1000);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 24,
        left: 24,
        top: 32,
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Filter',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 8,
              ),
              Text('your Search',
                  style: TextStyle(
                    fontSize: 24,
                  )),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Text('Qiymet',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 8,
              ),
              Text('araligi',
                  style: TextStyle(
                    fontSize: 24,
                  )),
            ],
          ),
          RangeSlider(
            values: selectedRange,
            onChanged: (RangeValues newRAnge) {
              setState(() {
                selectedRange = newRAnge;
              });
            },
            min: 70,
            max: 1000,
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                r"$70k",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                r"$1000k",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Rooms",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilterOptionsRoom(
                text: 'Hamısı',
                selected: false,
              ),
              FilterOptionsRoom(
                text: '1',
                selected: false,
              ),
              FilterOptionsRoom(
                text: '2',
                selected: false,
              ),
              FilterOptionsRoom(
                text: '3+',
                selected: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FilterOptionsRoom extends StatelessWidget {
  const FilterOptionsRoom({
    Key key,
    @required this.text,
    @required this.selected,
  }) : super(key: key);
  final String text;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 65,
      decoration: BoxDecoration(
          color: selected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(
            width: selected ? 0 : 1,
            color: Colors.grey,
          )),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
