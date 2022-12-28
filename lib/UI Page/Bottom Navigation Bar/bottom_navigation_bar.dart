import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../Home Page/home_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screenList=[
    const HomePage(),
    const Text('Second Page'),
    const Text('Third Page'),
    const Text('Fourth Page'),
  ];

  bool isButtonPressed= false;

  @override
  void setState(VoidCallback fn) {
    if(isButtonPressed==false){
      isButtonPressed = true;
    }else if (isButtonPressed == true){
      isButtonPressed =false;
    }
    super.setState(fn);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home, ),
                label: 'Home',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.bag,),
                label: 'Shopping Bag',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border,),
                label: 'Heart',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(isButtonPressed ? IconlyBold.profile: IconlyLight.profile,),
                label: 'Profile',
                backgroundColor: Colors.black),
          ]
      ),
      body: Center(
        child: screenList.elementAt(selectedIndex),
      ),
    );
  }
}
