import 'package:flutter/material.dart';
import 'package:test_bcn_design/ui/shared/styles.dart';

import 'home_card.dart';

class HomeProgrammes extends StatelessWidget {
  const HomeProgrammes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Space.HORIZONTAL_16,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8.0),
          Container(
            padding: Space.ALL_8,
            child: const Text('Recommended programmes'),
          ),
          const Divider(
            height: 8.0,
            endIndent: 0.0,
            indent: 0.0,
          ),
          Expanded(
            child: GridView.extent(
              physics: const BouncingScrollPhysics(),
              maxCrossAxisExtent: 200,
              childAspectRatio: 5 / 6,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              padding: Space.HORIZONTAL_8,
              shrinkWrap: true,
              semanticChildCount: 2,
              children: const <Widget>[
                CardHome(),
                CardHome(),
              ],
            ),
          ),
          const Divider(height: 8.0),
        ],
      ),
    );
  }
}
