import 'package:flutter/material.dart';

import '../../constants.dart';
import 'analyze_card.dart';

class DefaultTabBar extends StatelessWidget {
  const DefaultTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withOpacity(0.95),
              ),
            ),
            height: 45,
            child: TabBar(
              indicator: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              labelColor: primary2,
              unselectedLabelColor: Colors.white,
              tabs: [
                Text(
                  'Toplam',
                ),
                Text(
                  'Günlük',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Flexible(
                          child: Row(
                        children: [
                          AnalyzeCard(
                            color: Colors.yellow,
                            count: '1.81K',
                            title: 'Toplam Elan',
                          ),
                          AnalyzeCard(
                            color: Colors.red,
                            count: '1K',
                            title: 'Toplam Satilir',
                          ),
                        ],
                      )),
                      Flexible(
                          child: Row(
                        children: [
                          AnalyzeCard(
                            color: Colors.blue,
                            count: '4K',
                            title: 'Toplam Sorgu',
                          ),
                          AnalyzeCard(
                            color: Colors.green,
                            count: '1.2K',
                            title: 'Toplam Qebul',
                          ),
                          AnalyzeCard(
                            color: Colors.pink,
                            count: '0.6K',
                            title: 'Toplam Redd',
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: (Column(
                    children: [
                      Flexible(
                          child: Row(
                        children: [
                          AnalyzeCard(
                            color: Colors.yellow,
                            count: '1.81K',
                            title: 'Günlük Elan',
                          ),
                          AnalyzeCard(
                            color: Colors.red,
                            count: '1K',
                            title: 'Günlük Satilir',
                          ),
                        ],
                      )),
                      Flexible(
                          child: Row(
                        children: [
                          AnalyzeCard(
                            color: Colors.blue,
                            count: '4K',
                            title: 'Günlük Sorgu',
                          ),
                          AnalyzeCard(
                            color: Colors.green,
                            count: '1.2K',
                            title: 'Günlük Qebul',
                          ),
                          AnalyzeCard(
                            color: Colors.pink,
                            count: '0.6K',
                            title: 'Günlük Redd',
                          ),
                        ],
                      )),
                    ],
                  )),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    ));
  }
}
