import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// ignore: camel_case_types
class Work_Case extends StatefulWidget {
  const Work_Case({super.key});

  @override
  State<Work_Case> createState() => _Work_CaseState();
}

// ignore: camel_case_types
class _Work_CaseState extends State<Work_Case> {
  final List<String> name = <String>[
    "Tam Zamanlı Başlangıç Seviye",
    "1001-5000 çalışan BT Hizmetleri ve BT Danışmanlığı",
    "47 başvuran ile nasıl karşılaştığınızı görün \nPremiumu ücretsiz deneyin",
    "Yetenekler: Angular, Javascript, +8",
    "Bu iş ilanı ile ilgili doğrulamaları görüntüleyin \nTümünü göster",
  ];
  final List<IconData> icons = <IconData>[
    Icons.work,
    Icons.ballot_outlined,
    Icons.lightbulb_outline_sharp,
    Icons.tungsten_outlined,
    Icons.assignment_turned_in_sharp,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEF3F7),
        title: Column(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black54,
              ),
              label: const Text(
                "react.js Türkiye",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFEEF3F7),
                padding: const EdgeInsets.fromLTRB(4, 16, 180, 16),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      icons[index],
                      color: Colors.black45,
                    ),
                    label: Text(
                      name[index],
                      style: const TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          SlidingUpPanel(
            panel: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 28.0),
                    child: Text(
                      "Frontend Developer - 2 ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Image.asset(
                          'assets/images/linkedln_slidinguppanel_ilan_1.png',
                          height: 44,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Turing \nTürkiye(Uzaktan)",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "1 gün önce 47 başvuru",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: name.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                icons[index],
                                color: Colors.black54,
                              ),
                              label: Text(
                                name[index],
                                style: const TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
