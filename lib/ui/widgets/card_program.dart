import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:test_bcn_design/ui/views/details.dart';

class CardProgram extends StatefulWidget {
  const CardProgram({
    Key key,
  }) : super(key: key);

  @override
  _CardProgramState createState() => _CardProgramState();
}

class _CardProgramState extends State<CardProgram> {
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _OpenContainerWrapper(
        transitionType: _transitionType,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return CardWidget(openContainer: openContainer);
        },
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
      child: Container(
        margin: const EdgeInsets.all(4.0),
        child: Card(
          elevation: 4.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(4.0),
              bottom: Radius.circular(8.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(4.0),
              bottom: Radius.circular(8.0),
            ),
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 6,
                  fit: FlexFit.tight,
                  child: Image.network(
                    'https://via.placeholder.com/900x400',
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Expanded(child: Text('7 day programme')),
                        Expanded(child: Text('Working with thoughts')),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
