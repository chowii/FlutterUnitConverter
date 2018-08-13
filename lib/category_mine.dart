import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData icon;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(name);
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: Colors.amber,
          splashColor: Colors.deepOrange,
          onTap: () {
            print("Tapped");
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    size: 30.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
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
