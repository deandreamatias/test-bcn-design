import 'package:flutter/material.dart';

import '../shared/styles.dart';
import '../widgets/bottom_action.dart';
import '../widgets/details_card.dart';

class Details extends StatelessWidget {
  static const String ROUTE = '/details';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Image.asset(
                'assets/img/working.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: ColorCustom.BACKGROUND,
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CardDetails(),
            Container(
              width: double.infinity,
              color: ColorCustom.LOW_GREY,
              padding: Space.ALL_16,
              child: const Text('Day 1'),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: const BottomAction(),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }
}
