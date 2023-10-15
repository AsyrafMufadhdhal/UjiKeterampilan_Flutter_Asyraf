import 'package:flutter/material.dart';

void main() => runApp(const WisataSejarah());

class WisataSejarah extends StatelessWidget {
  const WisataSejarah({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> spotlist = [
      {
        'gambar':
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Mohammad_Hatta_Birth_Place_and_Museum%2C_Bukittinggi%2C_West_Sumatra_2017-02-13_01.jpg/1024px-Mohammad_Hatta_Birth_Place_and_Museum%2C_Bukittinggi%2C_West_Sumatra_2017-02-13_01.jpg",
        'nama': "Rumah Kelahiran Bung Hatta",
        'deskripsi':
            "Tempat untuk mengenal sang proklamator yang lahir dan menghabiskan masa kecil hingga umur 11 tahun di kota bukittinggi"
      },
      {
        'gambar':
            "https://asset.kompas.com/crops/NNZB1cuziP9pRB5igXF3nRXbCwE=/0x86:1280x940/750x500/data/photo/2022/01/18/61e63d1b8da1e.jpeg",
        'nama': "Jam Gadang",
        'deskripsi':
            "Menara jam yang menjadi Icon kota bukittinggi sebagai penanda titik nol dan pusat kota bukittinggi, hadiah dari Ratu Belanda Wilhelmina pada masa Hindia Belanda"
      },
      {
        'gambar':
            "https://asset.kompas.com/crops/pc6aTYZiweBOCEf1tu3ct8eP3oQ=/0x0:750x500/750x500/data/photo/2022/01/15/61e264ed050aa.jpg",
        'nama': "Lobang Jepang",
        'deskripsi':
            "sebuah terowongan (bunker) perlindungan yang dibangun tentara pendudukan Jepang sekitar tahun 1942 untuk kepentingan pertahanan"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFF2A363B),
          iconSize: 30,
        ),
        title: const Text('Wisata Sejarah',
            style: TextStyle(
                color: Color(0xFF2A363B),
                fontSize: 23,
                fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Bukittinggi memiliki sejarah yang luar biasa, mari pelajari dan kenali lebih lanjut',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Column(
            children: [
              for (int i = 0; i < spotlist.length; i++)
                Container(
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 165, 165, 165),
                              spreadRadius: 1,
                              blurRadius: 1.5,
                              offset: Offset(1, 2))
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage((spotlist[i]['gambar'] ?? ' ')),
                            fit: BoxFit.cover)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 350.5,
                          height: 175,
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(0, 255, 255, 255),
                                  Color(0xFFF8F6F6)
                                ],
                              ),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                (spotlist[i]['nama'] ?? ' '),
                                style: const TextStyle(
                                    color: Color(0xFF2A363B),
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                (spotlist[i]['deskripsi'] ?? ' '),
                                style: const TextStyle(
                                  color: Color(0xFF2A363B),
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
            ],
          )
        ],
      ),
    );
  }
}
