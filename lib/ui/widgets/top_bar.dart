import 'package:flutter/material.dart';

import '../shared/styles.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Space.HORIZONTAL_16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('evermind'),
            IconButton(icon: Icon(Icons.person), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
