import 'package:flutter/material.dart';
import 'package:hello_rectangle/category_screen.dart';

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories].
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Unit Converter',
        // our home should now point to an instance of the CategoryRoute widget.
      home: CategoryScreen()
    );
  }
}
