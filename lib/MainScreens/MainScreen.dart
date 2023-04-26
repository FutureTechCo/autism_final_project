import 'package:autism_final_project/Custom/CustomBottomNavigationBar.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Community.dart';
import 'package:autism_final_project/MainScreens/BnScreen/Home.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> body = [
    Home(),
    Community(),
    Center(
      child: Text('message'),
    ),
    Center(
      child: Text('profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFF7F9),
        body: body[_selectedIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped));
  }
}
