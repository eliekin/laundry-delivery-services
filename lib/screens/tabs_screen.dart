import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:pressing/screens/profile_screen.dart';
import 'package:pressing/screens/receipt_screen.dart';
import 'package:pressing/screens/support.dart';
import './home_screen.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key? key}) : super(key: key);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  late List<Map<String, dynamic>> _pages;
  @override
  void initState() {
    _pages = [
      {
        'page': MyHomePage(),
      },
      {
        'page': ReceiptScreen(),
      },
      {
        'page': SupportScreen(),
      },
      {
        'page': ProfileScreen(),
      },
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: _selectPage,
          elevation: 0.0,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.teal.withOpacity(0.3),
                icon: Icon(Icons.local_laundry_service,size: 32, color: Colors.white),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('images/receipt.png', color: Colors.white),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal.withOpacity(0.3),
                icon: Icon(Icons.support_agent_sharp,size: 32, color: Colors.white),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('images/user.png', color: Colors.white),
                label: ''),
          ]),
      body: _pages[_selectedPageIndex]['page']
    );
  }
}
