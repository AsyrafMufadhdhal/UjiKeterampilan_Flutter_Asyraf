import 'package:flutter/material.dart';

void main() => runApp(const WisataKuliner());

class WisataKuliner extends StatelessWidget {
  const WisataKuliner({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> spotlist = [
      {
        'gambar':
            "https://bimamedia-gurusiana.ap-south-1.linodeobjects.com/63f3a0d84155cf94b757c01c3c8ba2f8/2021/01/24/l-nasikapaujpg20210124000756.jpeg",
        'nama': "Nasi Kapau",
        'deskripsi':
            "Sajian Kuliner khas nagari kapau Bukittinggi dengan menu andalah gulai tambusu yang nikmat dan kuah yang kaya rasa"
      },
      {
        'gambar':
            "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/03/09/4172433227.png",
        'nama': "Karupuak Sanjai",
        'deskripsi':
            "Cemilan keripik khas bukittinggi beraneka rasa dan bentuk dengan bahan baku utama adalah singkong "
      },
      {
        'gambar':
            "https://infosumbar.net//aset/arsip/2023/02/IMG_20230215_164102-330x243.jpg",
        'nama': "Kawa dan Bika",
        'deskripsi':
            "kawa daun adalah minuman dari daun kopi yang diseduh seperti teh yang awalnya dikeringkan dengan cara disangrai selama 12 jam."
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
        title: const Text('Wisata Kuliner',
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
              'Kuliner khas minang yang menggugah selera dan otentik langsung dari ranah minang',
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
