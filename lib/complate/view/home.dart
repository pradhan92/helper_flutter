
import 'package:flutter/material.dart';
import 'package:helper/complate/screen/card.dart';
import 'package:helper/complate/screen/home_page.dart';
import 'package:helper/complate/screen/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          showSelectedLabels: true,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          onTap: (index) {
            print(index);
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Card',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Profile',
                backgroundColor: Colors.green),
          ]),
      body: selectedIndex == 0
          ? HomeScreen()
          : selectedIndex == 1
              ? CardScreen()
              : ProfileScreen(),
    );
  }
}
