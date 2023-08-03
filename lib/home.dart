import 'package:flutter/material.dart';
import 'package:linkedln_clone_nav_drawer/my_appbar.dart';
import 'package:linkedln_clone_nav_drawer/my_drawer.dart';
import 'package:linkedln_clone_nav_drawer/navbar.dart';

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
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black54,
              ),
              label: const Text(
                "Arama Yap",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFEEF3F7),
                padding: const EdgeInsets.fromLTRB(4, 16, 180, 16),
              ),
            ),
          ],
        ),
        //trailing: Icon(Icons.message_rounded),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Linkedln_profil.jpg'),
            ),
          ),
          // open drawer with button
          onTap: () => scaffoldKey.currentState?.openDrawer(),
          //TODO: How to open drawer from the circle avatar
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_rounded, color: Colors.black54),
            ),
          )
        ],
      ),
      drawer: const My_Drawer(),
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Text("İçerik Akış "),
      ),
      bottomNavigationBar: const My_Navbar(),
    );
  }
}
