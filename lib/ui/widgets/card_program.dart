import 'package:flutter/material.dart';
import 'package:test_bcn_design/ui/views/details.dart';

class CardProgram extends StatelessWidget {
  const CardProgram({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed<Details>(
        context,
        Details.ROUTE,
      ),
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
