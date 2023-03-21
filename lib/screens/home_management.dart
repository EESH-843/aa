import 'package:flutter/material.dart';
import 'package:mapbox_navigation/screens/main_map.dart';
import 'package:mapbox_navigation/screens/bus_list.dart';
import 'package:mapbox_navigation/screens/preferences.dart';

class HomeManagement extends StatefulWidget {
  const HomeManagement({Key? key}) : super(key: key);

  @override
  State<HomeManagement> createState() => _HomeManagementState();
}

class _HomeManagementState extends State<HomeManagement> {
  final List<Widget> _pages = [
    const BusList(),
    const MainMap(),
    const Preferences()
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (selectedIndex) {
          setState(() {
            _index = selectedIndex;
          });
        },
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus), label: 'Bus List'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Preferences'),
        ],
      ),
    );
  }
}
