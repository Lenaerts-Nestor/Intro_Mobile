// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _isLoggedIn = false;
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    // put map page widget here
    Center(
      child: Text('Map Page'),
    ),
    // put settings page widget here
    Center(
      child: Text('Settings Page'),
    ),
    Center(
      child: Text('Settings Page'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoggedIn) {
      // show the login page
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoggedIn = true;
                });
              },
              child: const Text('Login'),
            ),
          ),
        ),
      );
    } else {
      // show the main app with navigation bar
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Main App'),
          ),
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: 'Map',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lock),
                label: 'lcok',
              ),
            ],
          ),
        ),
      );
    }
  }
}
