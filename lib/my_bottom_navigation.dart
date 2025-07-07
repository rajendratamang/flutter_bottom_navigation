import 'package:bottom_navigation/home_page.dart';
import 'package:bottom_navigation/profile_page.dart';
import 'package:bottom_navigation/setting_page.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  // keep track of selected index page

  int _selectedIndex = 0;

  // method to update  selected index

  void _navigateBottomBar(int indedx) {}

  final List _pages = [
    // homepage
    HomePage(),
    // profile page
    ProfilePage(),
    // setting page
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom Navigation"),
        backgroundColor: Colors.blue,
      ),

      body: _pages[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'Profile',
          ),

          // setting
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
