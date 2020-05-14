import 'package:flutter/material.dart';

import '../shared/styles.dart';

class BottomAction extends StatelessWidget {
  const BottomAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + 16.0,
      width: double.infinity,
      padding: Space.ALL_16,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: Style.LOW_SHADOW,
      ),
      child: RaisedButton(
        onPressed: () {},
        color: ColorCustom.SOFT_BLACK,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: Text(
          'Start the programme',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
