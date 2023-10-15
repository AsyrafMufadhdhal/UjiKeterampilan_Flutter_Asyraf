import 'package:flutter/material.dart';
import 'wisata_alam.dart';
import 'wisata_sejarah.dart';
import 'wisata_budaya.dart';
import 'wisata_kuliner.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2A363B),
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/images/bktlogo.png'),
                fit: BoxFit.contain,
                width: 40,
              ),
              Text(
                'PARIWISATA KOTA BUKITTINGGI',
                textAlign: TextAlign.right,
                style: TextStyle(color: Color(0xFFF5D061), fontSize: 17),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
          // color: Colors.grey,
          height: double.infinity,
          width: double.infinity,
          // margin: const EdgeInsets.only(top: 10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: ListView(children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(25),
              height: 230,
              // color: Colors.green,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/jg.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.7,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: const Text(
                      'Halo, Selamat Datang\ndi Kota Bukittinggi',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2A363B)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  bottom: 30, top: 15, left: 25, right: 15),
              child: const Text(
                'Mau jelajah kemana hari ini ?',
                style: TextStyle(
                    color: Color(0xFF2A363B),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WisataAlam()));
                        },
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            side: const BorderSide(
                                color: Color(0xFFF5D061), width: 1),
                            fixedSize: const Size(150, 150),
                            backgroundColor: const Color(0xFFF8F6F6)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.nature_people_outlined,
                              color: Color(0xFF2A363B),
                              size: 65,
                            ),
                            Text('Wisata\nAlam',
                                style: TextStyle(
                                    color: Color(0xFF2A363B), fontSize: 17),
                                textAlign: TextAlign.center),
                          ],
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            side: const BorderSide(
                                color: Color(0xFFF5D061), width: 1),
                            fixedSize: const Size(150, 150),
                            backgroundColor: const Color(0xFFF8F6F6)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WisataSejarah()));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.history_edu_rounded,
                              color: Color(0xFF2A363B),
                              size: 65,
                            ),
                            Text('Wisata\nSejarah',
                                style: TextStyle(
                                    color: Color(0xFF2A363B), fontSize: 17),
                                textAlign: TextAlign.center),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            side: const BorderSide(
                                color: Color(0xFFF5D061), width: 1),
                            fixedSize: const Size(150, 150),
                            backgroundColor: const Color(0xFFF8F6F6)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WisataBudaya()));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.event_available_outlined,
                              color: Color(0xFF2A363B),
                              size: 65,
                            ),
                            Text('Wisata\nBudaya',
                                style: TextStyle(
                                    color: Color(0xFF2A363B), fontSize: 17),
                                textAlign: TextAlign.center),
                          ],
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            side: const BorderSide(
                                color: Color(0xFFF5D061), width: 1),
                            fixedSize: const Size(150, 150),
                            backgroundColor: const Color(0xFFF8F6F6)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WisataKuliner()));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.food_bank_outlined,
                              color: Color(0xFF2A363B),
                              size: 65,
                            ),
                            Text(
                              'Wisata\nKuliner',
                              style: TextStyle(
                                  color: Color(0xFF2A363B), fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 45,
                )
              ],
            )
          ]),
        ),
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
