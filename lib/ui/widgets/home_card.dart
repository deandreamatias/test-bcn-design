import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../shared/styles.dart';
import '../views/details.dart';

class CardHome extends StatefulWidget {
  const CardHome({
    Key key,
  }) : super(key: key);

  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Space.ALL_8,
        child: _OpenContainerWrapper(
          transitionType: _transitionType,
          closedBuilder: (BuildContext _, VoidCallback openContainer) {
            return CardWidget(openContainer: openContainer);
          },
        ),
      ),
    );
  }
}

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    this.closedBuilder,
    this.transitionType,
  });

  final OpenContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8.0),
          bottom: Radius.circular(12.0),
        ),
      ),
      closedElevation: 4.0,
      openElevation: 4.0,
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return Details();
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    this.openContainer,
    Key key,
  }) : super(key: key);

  final VoidCallback openContainer;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openContainer,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Image.asset(
              'assets/img/working.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: Space.ALL_8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      '7 day programme',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Working with thoughts',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
