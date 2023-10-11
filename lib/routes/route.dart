import 'package:flutter/material.dart';
import 'package:kyrinime/screens/home.dart';
import 'package:kyrinime/screens/feeds.dart';
import 'package:kyrinime/screens/search.dart';
import 'package:kyrinime/screens/playlist.dart';
import 'package:kyrinime/screens/user_info.dart';

class Route extends StatefulWidget {
  const Route({super.key});

  @override
  State<Route> createState() => _RouteState();
}

class _RouteState extends State<Route> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Home(),
        '/feed': (context) => const Feeds(),
        '/search': (context) => const Search(),
        '/playlist': (context) => const Playlist(),
        '/userinfo': (context) => const UserInfo(),
      },
    );
  }
}
