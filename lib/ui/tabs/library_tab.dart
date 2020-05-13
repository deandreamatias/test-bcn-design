import 'package:flutter/material.dart';

import 'package:test_bcn_design/ui/shared/styles.dart';

class LibraryTab extends StatelessWidget {
  const LibraryTab({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      'Index 1: Business',
      style: Style.TEXT_TAB,
    );
  }
}
