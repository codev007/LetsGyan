import 'package:flutter/material.dart';

import 'BottomNavigationbarScreens/AccountPage.dart';
import 'BottomNavigationbarScreens/BlogPage.dart';
import 'BottomNavigationbarScreens/HomePage.dart';
import 'package:letsgyan/style/theme.dart' as Theme;

class HomeData extends StatefulWidget {
  @override
  _HomeDataState createState() => _HomeDataState();
}

class _HomeDataState extends State<HomeData> {

  final String title = "";

  final List<Widget> pages = [

    HomePage(
      key: PageStorageKey('Page1'),
    ),
    BlogPage(
      key: PageStorageKey('Page2'),
    ),
    AccountPage(
      key: PageStorageKey('Page3'),
    ),

  ];

  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Theme.Colors.primaryColor,
    selectedItemColor: Theme.Colors.bottomselected,
    unselectedItemColor: Theme.Colors.bottomunselected,
    onTap: (int index) => setState(() => _selectedIndex = index),
    currentIndex: selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(
          icon: Icon(Icons.question_answer), title: Text('Blog')),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), title: Text('Account')),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}