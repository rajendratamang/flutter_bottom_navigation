import 'package:bottom_navigation/home_page.dart';
import 'package:bottom_navigation/my_bottom_navigation.dart';
import 'package:bottom_navigation/profile_page.dart';
import 'package:bottom_navigation/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigation(),
      routes: {
        '/profilepage': (context) => ProfilePage(),
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
