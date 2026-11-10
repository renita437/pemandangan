import 'package:flutter/material.dart';

void main() {
  runApp(Tugas());
}

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "kondang merak",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0x1e000000),
        ),
        body: Column(
          children: [
            // GAMBAR PANTAI
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/kondangmerak.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // SEJARAH DAN LOKASI
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  // SEJARAH
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sejarah",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              """Pantai ini dinamakan Kondang Merak karena pantai ini memiliki kondang (muara yang merupakan pertemuan air tawar dan laut) yang dahulu menjadi habitat burung merak. Sayangnya, pada tahun 1980-an, burung merak mulai punah akibat penangkapan liar.

Pantai Kondang Merak memiliki area terumbu karang yang cukup luas dan masih terjaga. Bagi Anda yang hobi snorkeling tidak akan pernah rugi jika meluangkan waktunya untuk berkunjung.

Tarif yang dikenakan juga terjangkau, yakni Rp10.000 ditambah uang parkir Rp5.000. Sangat terjangkau untuk Anda yang hobi travelling.""",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // GARIS PEMBATAS
                  Container(
                    width: 1,
                    color: Colors.pink,
                  ),

                  // LOKASI
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Desa Sumberbening, Kecamatan Bantur, Kabupaten Malang, Jawa Timur.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // CONTACT
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
