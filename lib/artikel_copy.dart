import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> news = [
      {
        'gambar':
            'https://statik.tempo.co/data/2023/10/09/id_1243870/1243870_720.jpg',
        'tanggal': '9 Oktober 2023',
        'judul':
            'Berkunjung ke Museum Penyimpanan Senjata Perang di Bukittinggi'
      },
      {
        'gambar':
            'https://statik.tempo.co/data/2023/10/04/id_1242644/1242644_720.jpg',
        'tanggal': '4 Oktober 2023',
        'judul':
            'Wisata Kuliner Khas Sumatera Barat di Kawasan Jam Gadang Bukittinggi'
      },
      {
        'gambar':
            'https://katasumbar.com/wp-content/uploads/2023/01/20230128_093954_copy_800x600.jpg',
        'tanggal': '29 September 2023',
        'judul': 'Skywalk Benteng Fort de Kock Bukittinggi'
      },
    ];
    return Scaffold(
        backgroundColor: const Color(0xFF2A363B),
        appBar: AppBar(
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Artikel',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Berita terbaru seputar pariwisata dan event kreatif Kota Bukittinggi',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    overflow: TextOverflow.visible,
                    softWrap: true,
                  ),
                ],
              )),
        ),
        body: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: ListView(
              children: [
                for (int i = 0; i < news.length; i++)
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 5, left: 10, right: 10),
                    // height: 110,
                    decoration: const BoxDecoration(
                        // color: Color(0xFFF8F6F6),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(children: <Widget>[
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image: NetworkImage((news[i]['gambar'] ?? ' ')),
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 110,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(15))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text((news[i]['tanggal'] ?? ' ')),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              (news[i]['judul'] ?? ' '),
                              style: const TextStyle(
                                  color: Color(0xFF2A363B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ))
                    ]),
                  )
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          fixedColor: const Color(0xFFF5D061),
          backgroundColor: const Color(0xFFCF4647),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Artikel',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded),
              label: 'Tentang',
            ),
          ],
        ));
  }
}
