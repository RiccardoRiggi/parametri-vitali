import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ColonnaFrequenza.dart';
import 'ColonnaPressione.dart';
import 'ColonnaRespirazione.dart';

class SchermataHome extends StatefulWidget {
  SchermataHome({Key key}) : super(key: key);

  @override
  _SchermataHomeState createState() => _SchermataHomeState();
}

class _SchermataHomeState extends State<SchermataHome> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    ColonnaRespirazione(),
    ColonnaFrequenza(),
    ColonnaPressione(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.blueAccent[300],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.lungs),
            title: Text('Respirazione'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heartbeat),
            title: Text('Frequenza'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.stethoscope),
            title: Text('Pressione'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent[700],
        onTap: _onItemTapped,
      ),
    );
  }


}