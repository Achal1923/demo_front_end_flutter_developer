import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/Categories.dart';
import 'pages/Favourites.dart';
import 'pages/Profile.dart';
import 'pages/Settings.dart';


const CustomBlueGrey = Color(0xFF324558);
const CustomGrey = Color(0xFFE0E0E0);


class DashBoard extends StatefulWidget {

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  int _currentIndex = 1;
  final List<Widget> children = [
    HomePage(),
    Categories(),
    Favourites(),
    Profile(),
    Settings(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
            _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFFFD6592),
        backgroundColor: Colors.pink.shade50,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_sharp),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
            ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gear_solid),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
