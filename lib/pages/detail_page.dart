// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ismprod_final_project/widgets/lv_meter_stless.dart';
import 'package:ismprod_final_project/widgets/text_detail.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
   int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //widget bottom navigation bar
       //bottomNavigationBar: BottomNavigationBar(items: const [
        //BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
        //BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        //],),
      appBar: AppBar(
        //widget appbar
        backgroundColor: const Color(0xFF1650C0),
        automaticallyImplyLeading: false,
        title: const Text(
          "Detail Unit Produksi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Tumpukan Foto dan nama unit produksi
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * 0.3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/kpp.jpg"))),
                  ),
                  Positioned(
                    //widget tanda panah atas
                    top: 16,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    //widget tanda kanan
                    top: 16,
                    right: 16,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Icon(
                        Icons.assistant_direction,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    // ignore: sort_child_properties_last
                    child: const Padding(
                      //widget judul
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Sumur Bor Starban",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: height * 0.07,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )
                ],
              ),
              //Row jenis unit produksi
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.holiday_village,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Sumur Bor")
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.add_task_rounded,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Kapasitas 40 L/S")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              //card info
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: const Color.fromARGB(255, 115, 213, 252),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "Jadwal Catat Bulan Ini :",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text("26 Februari 2024")
                          ],
                        ),
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFF1650C0))),
                            onPressed: () {},
                            child: const Text(
                              "Catat",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              // widget detail
              const TextDetail(
                title: "Kode Meter",
                detail: "01.SB.001",
              ),
              const TextDetail(
                title: "Alamat",
                detail: "Jl. Starban Polonia No. 01",
              ),
              const TextDetail(
                title: "Keterangan",
                detail:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              ),

              //Judul Listview history
              const Padding(
                padding: EdgeInsets.all(17),
                child: Text(
                  "Data Catatan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),

              //List View Data Catatan meter
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    LvMeter(
                        imagePath: "assets/images/meter/meter01.jpeg",
                        unitproduksi: "SB Starban",
                        periodecatat: "01/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter02.jpeg",
                        unitproduksi: "SB Starban",
                        periodecatat: "02/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter03.jpg",
                        unitproduksi: "SB Starban",
                        periodecatat: "03/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter04.jpeg",
                        unitproduksi: "SB Starban",
                        periodecatat: "04/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter05.jpeg",
                        unitproduksi: "SB Starban",
                        periodecatat: "05/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter06.jpg",
                        unitproduksi: "SB Starban",
                        periodecatat: "06/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter07.jpeg",
                        unitproduksi: "SB Starban",
                        periodecatat: "07/2023",
                        jlhproduksi: "10.000 M3"),
                    LvMeter(
                        imagePath: "assets/images/meter/meter08.jpeg",
                        unitproduksi: "SB Starban",
                        periodecatat: "08/2023",
                        jlhproduksi: "10.000 M3"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
onItemSelected(index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
}
