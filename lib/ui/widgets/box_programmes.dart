import 'package:flutter/material.dart';

import 'card_program.dart';

class BoxProgrammes extends StatelessWidget {
  const BoxProgrammes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8.0),
          Container(
            padding: const EdgeInsets.all(8.0),
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
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 0.0,
              ),
              shrinkWrap: true,
              semanticChildCount: 2,
              children: const <Widget>[
                CardProgram(),
                CardProgram(),
              ],
            ),
          ),
          const Divider(height: 8.0),
        ],
      ),
    );
  }
}
