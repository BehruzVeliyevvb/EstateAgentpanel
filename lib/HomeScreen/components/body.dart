import 'package:estateagent/HomeScreen/components/filter_scroll.dart';
import 'package:estateagent/HomeScreen/components/resultfound_bar.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'filter.dart';
import 'homelist_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, tittle: 'Salam'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 32,
                      child: Stack(
                        children: [
                          ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(width: 20),
                              FilterScroll(filtername: 'EV'),
                              FilterScroll(filtername: 'Qiymet'),
                              FilterScroll(filtername: 'Yer'),
                              FilterScroll(filtername: 'Otag'),
                              FilterScroll(filtername: 'Torpag'),
                              SizedBox(width: 10),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 28,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      stops: [
                                    0.0,
                                    1.0
                                  ],
                                      colors: [
                                    Theme.of(context).scaffoldBackgroundColor,
                                    Theme.of(context)
                                        .scaffoldBackgroundColor
                                        .withOpacity(0.0),
                                  ])),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Filter()
                ],
              ),
            ),
            ResultFound(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Center(child: HomeList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
