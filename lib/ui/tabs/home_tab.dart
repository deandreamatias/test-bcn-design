import 'package:flutter/material.dart';

import 'package:test_bcn_design/ui/shared/styles.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 0: Home',
      style: Style.TEXT_TAB,
    );
  }
}