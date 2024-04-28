import 'package:flutter/material.dart';
import 'package:ismprod_final_project/widgets/text_detail.dart';

class AkunProfil extends StatefulWidget {
  const AkunProfil({super.key});

  @override
  State<AkunProfil> createState() => _AkunProfilState();
}

class _AkunProfilState extends State<AkunProfil> {
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
          "Profil User",
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
                            fit: BoxFit.contain,
                            image: AssetImage("assets/images/ipoey.png"))),
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
                        "Syaiful Hadi S.Kom",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
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
                        Text(
                          "Unit Kerja :",
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                          
                            Text(
                              "Cabang Sei Agul",
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
                              "Aktif mulai Tanggal :",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.free_cancellation,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1 Januari 2022",
                              style: TextStyle(fontSize: 16),
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
                title: "NIPP",
                detail: "81230098",
              ),
              const TextDetail(
                title: "Jabatan",
                detail: "Kepala Bagian Jaringan & PKA",
              ),
              const TextDetail(
                title: "Alamat",
                detail: "Jl. Pengilar No 4 Medan Amplas",
              ),
              const TextDetail(
                title: "No Handphone",
                detail: "082160886490",
              ),
              const TextDetail(
                title: "email",
                detail: "ipoey.design@gmail.com",
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
