import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedln_clone_nav_drawer/my_drawer.dart';
import 'package:linkedln_clone_nav_drawer/pages.dart/network.dart';

import 'home.dart';

class My_Navbar extends StatefulWidget {
  const My_Navbar({Key? key});

  @override
  State<My_Navbar> createState() => _My_NavbarState();
}

class _My_NavbarState extends State<My_Navbar> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Network',
      style: optionStyle,
    ),
    Text(
      'Index 2: Publish',
      style: optionStyle,
    ),
    Text(
      'Index 3: Notifications',
      style: optionStyle,
    ),
    Text(
      'Index 3: Work-case',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
      drawer: My_Drawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home_icon.svg',
              width: 32,
              height: 32,
              color: Colors.black54,
            ),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/metwork_icon.svg',
              width: 32,
              height: 32,
              color: Colors.black54,
            ),
            label: "Ağım",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/add_icon.svg',
              width: 32,
              height: 32,
              color: Colors.black54,
            ),
            label: "Yayınla",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/notification_icon.svg',
              width: 32,
              height: 32,
              color: Colors.black54,
            ),
            label: "Bildirimler",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/work-case_icon.svg',
              width: 32,
              height: 32,
              color: Colors.black54,
            ),
            label: "İş İlanları",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
