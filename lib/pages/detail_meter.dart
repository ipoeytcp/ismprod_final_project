import 'package:flutter/material.dart';
import 'package:ismprod_final_project/widgets/text_detail.dart';


class DetailMeter extends StatefulWidget {
  const DetailMeter({super.key});

  @override
  State<DetailMeter> createState() => _DetailMeterState();
}

class _DetailMeterState extends State<DetailMeter> {
int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //widget bottom navigation bar
      //  bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      //   ],),
      appBar: AppBar(
        //widget appbar
        backgroundColor: const Color(0xFF1650C0),
        automaticallyImplyLeading: false,
        title: const Text(
          "Detail ISM",
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
                            image: AssetImage(
                                "assets/images/meter/meter01.jpeg"))),
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
                          Icons.calendar_month,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "01/2023",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.output,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Produksi : 10.000 M3",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              //card info
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromARGB(255, 115, 213, 252),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Tanggal Input :",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "2 Januari 2023",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.free_cancellation,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Lewat Waktu Catat",
                              style: TextStyle(fontSize: 16, color: Colors.red),
                            )
                          ],
                        )
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
                title: "Jenis Unit Produksi",
                detail: "Sumur Bor",
              ),
              const TextDetail(
                title: "Alamat",
                detail: "Jl. Starban Polonia No. 01",
              ),
              const TextDetail(
                title: "Penanggung Jawab",
                detail: "Syaiful hadi",
              ),
              const TextDetail(
                title: "Pilihan Catat",
                detail: "Normal",
              ),
              const TextDetail(
                title: "Stand Awal (Ltr)",
                detail: "110.000.000",
              ),
              const TextDetail(
                title: "Stand Akhir (Ltr)",
                detail: "120.000.000",
              ),
              const TextDetail(
                title: "Jumlah Produksi (Ltr)" ,
                detail: "10.000.000",
              ),
              
              const TextDetail(
                title: "Keterangan",
                detail:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
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
