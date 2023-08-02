import 'package:flutter/material.dart';

// ignore: camel_case_types
class My_Drawer extends StatelessWidget {
  const My_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: CircleAvatar(
                radius: 32,
                backgroundImage:
                    AssetImage('assets/images/Linkedln_profil.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextButton(
                onPressed: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Dilruba Başaran",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Profili görüntüle",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45),
                        //TODO: how to align Text
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextButton(
                onPressed: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Analizler ve araçlar",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
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
            //TODO : out padding
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Colors.black12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Gruplar",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Etkinlikler",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.black12,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.square_rounded,
                    color: Color.fromARGB(255, 193, 148, 12)),
                label: const Text(
                  "Premium'u ücretsiz \ndeneyin",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.black54,
                    ),
                    label: const Text(
                      "Ayarlar",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
