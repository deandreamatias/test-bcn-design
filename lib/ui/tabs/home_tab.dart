import 'package:flutter/material.dart';
import 'package:test_bcn_design/ui/widgets/box_programmes.dart';

import 'package:test_bcn_design/ui/widgets/top_bar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Load here a video with play button
        Container(
          color: Colors.orange,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: const TopBar(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: const FractionallySizedBox(
            heightFactor: 0.5,
            child: BoxProgrammes(),
          ),
        )
      ],
    );
  }
}
