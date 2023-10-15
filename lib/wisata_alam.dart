import 'package:flutter/material.dart';

void main() => runApp(const WisataAlam());

class WisataAlam extends StatelessWidget {
  const WisataAlam({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> spotlist = [
      {
        'gambar': "https://sumbarprov.go.id/images/2018/03/Adi_2.jpg",
        'nama': "Panorama Ngarai Sianok",
        'deskripsi':
            "Lembah Curam yang merupakan bagian dari patahan yang memisahkan Pulau Sumatra menjadi dua bagian memanjang (patahan Semangko)"
      },
      {
        'gambar':
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Keindahan_dan_selimut_kabut_pagi_di_Tabiang_Takuruang.jpg/800px-Keindahan_dan_selimut_kabut_pagi_di_Tabiang_Takuruang.jpg?20220531161515",
        'nama': "Tabiang Takuruang",
        'deskripsi':
            "tebing yang menjulang tinggi sehingga membelah sungai menjadi dua jalur dan dikelilingi perbukitan, satu bagian dari gugusan ngarai sianok"
      },
      {
        'gambar':
            "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj0pwN5IAhfqK06rs3C-21Bs2Hur_pdK5kSK2Rqk0x1W4DLusgnY9euRiwLUkEx1d9kGT-cnDFgegJrD2yonEs9Un8ownG9DPw3GN-v60h_yOu91_XV6U2jDTZ5hs_WkWXzEtlxNRINgxJhvFK2IIkmFqe1ihjlZ8Z4SuZocATs770EhNJoPx7RAdH8/w640-h428/2.jpg",
        'nama': "Panorama Kelok Lengkok",
        'deskripsi':
            "Hamparan sawah yang membentang bak permadani, cocok untuk menikmati waktu santai dengan suasana damai dan udara yang sejuk"
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
        title: const Text('Wisata Alam',
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
              'Jelajahi pesona alam Bukittinggi yang indah dan memukau',
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
