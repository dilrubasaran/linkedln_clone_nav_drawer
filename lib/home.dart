import 'package:flutter/material.dart';
import 'my_appbar.dart';
import 'my_drawer.dart';
import 'navbar.dart';

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
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: Appbar(
        scaffoldKey: scaffoldKey,
        size: const Size(20, 90),
      ),
      drawer: const My_Drawer(),
      backgroundColor: Colors.blue[300],
      body: const Center(
        child: Text("İçerik Akış "),
      ),
      bottomNavigationBar: const My_Navbar(),
    );
  }
}
