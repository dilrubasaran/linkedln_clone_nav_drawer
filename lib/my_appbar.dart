import 'package:flutter/material.dart';

// ignore: camel_case_types
class My_AppBar extends StatefulWidget {
  const My_AppBar({super.key});

  @override
  State<My_AppBar> createState() => _My_AppBarState();
}

// ignore: camel_case_types
class _My_AppBarState extends State<My_AppBar> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
