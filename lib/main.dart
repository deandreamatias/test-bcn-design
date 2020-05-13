import 'package:flutter/material.dart';

import 'router.dart';
import 'ui/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
      initialRoute: Home.ROUTE,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
