import 'package:flutter/material.dart';
import 'package:linkedln_clone_nav_drawer/my_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: const CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
            //TODO: How to open drawer from the circle avatar
          ),
        ],
      ),
      drawer: const My_Drawer(),
    );
  }
}
