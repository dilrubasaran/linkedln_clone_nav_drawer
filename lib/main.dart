import 'package:flutter/material.dart';
import 'package:linkedln_clone_nav_drawer/my_appbar.dart';

import 'home.dart';
import 'my_drawer.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/navbar': (context) => My_Navbar(),
        '/my_drawer': (context) => const My_Drawer(),
        '/my_appbar': (context) => const My_AppBar(),
        '/home': (context) => const Home(),
      },
    );
  }
}
