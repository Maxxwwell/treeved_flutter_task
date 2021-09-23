// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:treeved_flutter_task/screens/home/explore.dart';
import 'package:treeved_flutter_task/screens/home/favorites.dart';
import 'package:treeved_flutter_task/screens/home/message.dart';
import 'package:treeved_flutter_task/screens/home/profile.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key}) : super(key: key);

  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  @override
  int _currentIndex = 0;
  final List<Widget> _children = [
    Explore(),
    Favorites(),
    Message(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // unselectedFontSize: 14,
        iconSize: 24,
        elevation: 4,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
