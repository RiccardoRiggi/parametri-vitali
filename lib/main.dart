import 'package:flutter/material.dart';
import 'SchermataHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Parametri Vitali';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: SchermataHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}



