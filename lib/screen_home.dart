import 'package:crossroads/screen_acoounts.dart';
import 'package:crossroads/screen_main.dart';
import 'package:crossroads/screen_search.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentSelectedIndex = 0;

  final _pages =  [
    ScreenMain(),
    ScreenSearch(),
    Accounts()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black45,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),
    );
  }
}
