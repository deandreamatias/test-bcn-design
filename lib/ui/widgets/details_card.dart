import 'package:flutter/material.dart';

import '../shared/styles.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Space.ALL_16,
      child: Column(
        children: <Widget>[
          const Padding(
            padding: Space.ALL_16,
            child: Text('7 day programme'),
          ),
          Padding(
            padding: Space.ALL_8,
            child: Text(
              'Working with thoughts',
              style: Style.TEXT_TITLE,
            ),
          ),
          const Padding(
            padding: Space.ALL_16,
            child: Text(
              'In this 7-day programme, we\'ll help you to write your thoughts down, identify any negative thing and lorem ipsun mas palabras por aqui para testar',
              // textAlign: TextAlign.,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Style.TEXT_DESCRIPTION,
            ),
          ),
          const Divider(),
          FlatButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text('Keep reading'),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          )
        ],
      ),
    );
  }
}
