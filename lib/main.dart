import 'package:flutter/material.dart';
import 'beranda.dart';
import 'artikel.dart';
import 'tentang.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listpage = <Widget>[
      const Beranda(),
      const Artikel(),
      const Tentang(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Beranda',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.article),
        label: 'Artikel',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.info_outline_rounded),
        label: 'Tentang',
      ),
    ];

    final _bottomNavbar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFCF4647),
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.white,
      selectedItemColor: const Color(0xFFF5D061),
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      backgroundColor: const Color(0xFF2A363B),
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: const Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image(
      //         image: AssetImage('assets/images/bktlogo.png'),
      //         fit: BoxFit.contain,
      //         width: 40,
      //       ),
      //       Text(
      //         'PARIWISATA KOTA BUKITTINGGI',
      //         textAlign: TextAlign.right,
      //         style: TextStyle(color: Color(0xFFF5D061), fontSize: 17),
      //       )
      //     ],
      //   ),
      //   centerTitle: true,
      // ),
      body: Center(
        child: _listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavbar,
    );
  }
}
