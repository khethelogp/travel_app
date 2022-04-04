import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/screens/navscreens/bar_item_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/navscreens/my_screen.dart';
import 'package:travel_app/screens/navscreens/search_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    HomeScreen(),
    BarItemScreen(),
    SearchScreen(),
    MyScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                title: Text('Home'), icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                title: Text('Bar'), icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(
                title: Text('Search'), icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                title: Text('My'), icon: Icon(Icons.person)),
          ]),
    );
  }
}
