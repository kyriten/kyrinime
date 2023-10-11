import 'package:flutter/material.dart';
import 'package:kyrinime/screens/home.dart';
import 'package:kyrinime/screens/user_info.dart';
import 'package:kyrinime/screens/search.dart';
import 'package:kyrinime/screens/playlist.dart';
import 'package:kyrinime/screens/feeds.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Feeds(),
    const Search(),
    const Playlist(),
    const UserInfo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 33, 33, 33),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 33, 33, 33),
            icon: Icon(Icons.feed),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 33, 33, 33),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 33, 33, 33),
            icon: Icon(Icons.playlist_play),
            label: 'Playlist',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 33, 33, 33),
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 238, 91, 91),
        onTap: _onItemTapped,
      ),
    );
  }
}
