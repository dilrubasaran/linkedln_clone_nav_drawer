import 'package:flutter/material.dart';
import 'package:linkedln_clone_nav_drawer/my_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // creating key for opening drawer
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          child: const CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          // open drawer with button
          onTap: () => scaffoldKey.currentState?.openDrawer(),
          //TODO: How to open drawer from the circle avatar
        ),
      ),
      drawer: const My_Drawer(),
    );
  }
}
