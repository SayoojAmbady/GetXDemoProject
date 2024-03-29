import 'package:demo_project/Screens/category_screen.dart';
import 'package:demo_project/Screens/home_screen.dart';
import 'package:demo_project/Screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../foundation/sp_icon/sp_icon.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _LandingPageState();
}

class _LandingPageState extends State<BottomBar> {
  int currentState = 0;

  final _pages = [HomeScreen(), CategoryScreen(), ProfileScreen()];

  get currentIndex => currentState;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[currentState],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentState,
        onTap: (newIndex) {
          setState(() {
            currentState = newIndex;
          });
        },
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'logo-black.png',
                  isSelected: 0 == currentIndex),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'categories.png', isSelected: 1 == currentIndex),
              label: "Categories"),
          BottomNavigationBarItem(
              icon:
                  SPIcon(assetname: 'profile.png', isSelected: 2 == currentIndex),
              label: "Profile")
        ],
     ),
);
}
}