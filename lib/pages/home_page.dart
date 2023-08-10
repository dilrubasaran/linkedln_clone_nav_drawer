import 'package:flutter/material.dart';

class Home_Pages extends StatefulWidget {
  const Home_Pages({super.key});

  @override
  State<Home_Pages> createState() => _Home_PagesState();
}

class _Home_PagesState extends State<Home_Pages> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
