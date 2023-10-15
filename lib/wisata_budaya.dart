import 'package:flutter/material.dart';

void main() => runApp(const WisataBudaya());

class WisataBudaya extends StatelessWidget {
  const WisataBudaya({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> spotlist = [
      {
        'gambar':
            "https://cdn2.tstatic.net/tribunnewswiki/foto/bank/images/Rumah-Adat-Baanjuang.jpg",
        'nama': "Rumah Adat Nan Baanjuang",
        'deskripsi':
            "Wadah pelestarian budaya Minangkabau, menjadi tujuan wisata, dan sarana edukasi mengenal budaya Minangkabau lebih jauh"
      },
      {
        'gambar':
            "https://indonesiakaya.com/wp-content/uploads/2020/10/tenun_songket_1200.jpg",
        'nama': "Tenun Pandai Sikek",
        'deskripsi':
            "Kain tenun songket Pandai Sikek mempunyai ciri khas, baik pada pemakaian benang emas dan perak, motif, maupun penggarapannya yang halus"
      },
      {
        'gambar':
            "https://hypeabis.id/assets/photo/20221118171748000000EVIKA081363043515BATAGAKPENGHULU.jpg",
        'nama': "Batagak Panghulu",
        'deskripsi':
            "upacara adat Minangkabau dalam rangka meresmikan seseorang menjadi penghulu atau seorang pemimpin kaum (suku)"
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
        title: const Text('Wisata Budaya',
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
              'Budaya minagkabau yang kaya dapat dinikmati di kota Bukittinggi',
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
