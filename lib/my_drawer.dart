import 'package:flutter/material.dart';

// ignore: camel_case_types
class My_Drawer extends StatelessWidget {
  const My_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: CircleAvatar(
                radius: 32,
                //backgroundImage: AssetImage('assets/images/Linkedln.jpg')
                backgroundColor: Colors.amber,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Column(
                  children: [
                    Text(
                      "Dilruba Başaran",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Profili görüntüle",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Column(
                  children: [
                    Text(
                      "Analizler ve araçlar",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "16 profil görüntülemesi",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
