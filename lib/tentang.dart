import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Tentang(),
  ));
}

class Tentang extends StatelessWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A363B),
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Tentang\nKota Bukittinggi',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 25, bottom: 25),
                child: const Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Logo_Kota_Bukittinggi.png/462px-Logo_Kota_Bukittinggi.png')),
              ),
              const Expanded(
                  child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Sekilas',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Bukittinggi merupakan kota dengan perekonomian kedua terbesar di Sumatera Barat. Kota ini pernah menjadi ibukota Indonesia selama masa Pemerintahan Darurat Republik Indonesia (PDRI). Bukittinggi dikenal sebagai kota perjuangan bangsa dan merupakan tempat kelahiran Proklamator sekaligus Wakil Presiden pertama Indonesia yaitu Mohammad Hatta',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      'Geografis',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Kota Bukittinggi terletak pada rangkaian Pegunungan Bukit Barisan atau sekitar 90 km arah utara dari Kota Padang. Kota ini berada di tepi Ngarai Sianok dan dikelilingi oleh dua gunung yaitu Gunung Singgalang dan Gunung Marapi. Lokasinya pada ketinggian 909 hingga 941 mdpl menjadikan Bukittinggi kota berhawa sejuk dengan suhu berkisar antara 16.1 hingga 24.9 °C.',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      'Ekonomi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Kota Bukittinggi merupakan salah satu pusat perdagangan grosir terbesar di Pulau Sumatra. Pusat perdagangan utamanya terdapat di Pasar Ateh, Pasar Bawah, dan Pasar Aur Kuning. Dari sektor perekonomian, Bukittinggi merupakan kota dengan PDRB terbesar kedua di Sumatera Barat, setelah Kota Padang.[10] Tempat wisata yang ramai dikunjungi adalah Jam Gadang, yaitu sebuah menara jam yang terletak di jantung kota sekaligus menjadi simbol bagi Bukittinggi.',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
