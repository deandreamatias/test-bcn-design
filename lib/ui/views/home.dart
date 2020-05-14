import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/styles.dart';
import '../tabs/home_tab.dart';
import '../tabs/journey_tab.dart';
import '../tabs/library_tab.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);
  static const String ROUTE = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    LibraryTab(),
    JourneyTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      ),
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 8.0,
          selectedIconTheme: const IconThemeData(
            color: ColorCustom.SOFT_BLACK,
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                  color: ColorCustom.SOFT_BLACK,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text(
                'Library',
                style: TextStyle(
                  color: ColorCustom.SOFT_BLACK,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              title: Text(
                'My journey',
                style: TextStyle(
                  color: ColorCustom.SOFT_BLACK,
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
