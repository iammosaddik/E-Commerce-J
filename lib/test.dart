import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'UI Page/Home Page/home_page.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  bool isButtonPressed = true;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screenList = [
    const HomePage(),
    const Text('Second Page'),
    const Text('Third Page'),
    const Text('Fourth Page'),
    const Text('Five Page'),
  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: selectedIndex,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            IconlyLight.bag,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.favorite_border_rounded,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: screenList.elementAt(selectedIndex),
      ),
    );
  }
}
