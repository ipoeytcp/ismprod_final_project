import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class ListviewMeter extends StatefulWidget {
  const ListviewMeter({super.key});

  @override
  State<ListviewMeter> createState() => _ListviewMeterState();
}

class _ListviewMeterState extends State<ListviewMeter> {
  final List<DataIsm> ism = [
    DataIsm(
        foto: "assets/images/meter/meter01.jpeg",
        unitproduksi: 'SB Starban',
        periodecatat: '01/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter02.jpeg",
        unitproduksi: 'SB Starban',
        periodecatat: '02/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter03.jpg",
        unitproduksi: 'SB Starban',
        periodecatat: '03/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter04.jpeg",
        unitproduksi: 'SB Starban',
        periodecatat: '04/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter05.jpeg",
        unitproduksi: 'SB Starban',
        periodecatat: '05/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter06.jpg",
        unitproduksi: 'SB Starban',
        periodecatat: '06/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter07.jpeg",
        unitproduksi: 'SB Starban',
        periodecatat: '07/2024',
        jlhproduksi: '10.000 M3'),
    DataIsm(
        foto: "assets/images/meter/meter08.jpeg",
        unitproduksi: 'SB Starban',
        periodecatat: '08/2024',
        jlhproduksi: '10.000 M3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1650C0),
        automaticallyImplyLeading: false,
        title: const Text(
          "Data ISM",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: ism.map((hasilMapIsm) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  //anank 1 foto meter
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(hasilMapIsm.foto),
                            fit: BoxFit.cover)),
                  ),
                  //anak 2 data unit
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // anak 1 nama
                            Text(
                              hasilMapIsm.unitproduksi,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            // anak 2 periode
                            Text('Periode : ${hasilMapIsm.periodecatat}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            // anak 3 liter
                            Text('Produksi: ${hasilMapIsm.jlhproduksi}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                          ],
                        ),
                        
                        // anak 3 icon
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 125, 162, 236))),
                            onPressed: () {
                            },
                            child: const Text(
                              "Lihat",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class DataIsm {
  final String foto;
  final String unitproduksi;
  final String periodecatat;
  final String jlhproduksi;

  DataIsm(
      {required this.foto,
      required this.unitproduksi,
      required this.periodecatat,
      required this.jlhproduksi});
}
