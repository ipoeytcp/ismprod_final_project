import 'package:flutter/material.dart';
import 'package:ismprod_final_project/login_screen/login_screen.dart';
import 'package:ismprod_final_project/pages/headerdrawer.dart';
import 'package:ismprod_final_project/storage/auth_storage.dart';
import 'package:ismprod_final_project/widgets/history_catatan.dart';
import 'package:ismprod_final_project/widgets/menu_utama.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

      
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      //Untuk widget bottom navigation barr
       //bottomNavigationBar: BottomNavigationBar(items: const [
       // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
       // BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Cari Data"),
       // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        //],),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1650C0),
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        title: const Text(
          "ISM Produksi Final Project",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      //untuk widge drawer
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Setting"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Berlangganan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Keluar"),
                onTap: () async {
                  final int response = await AuthStorage().clearStorage();
              if (response == 200) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false);
              }
                },
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text("v1.0"),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.8),
                  ),
                  hintText: "Cari Data Unit Produksi",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/ipoey.png"),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color.fromARGB(255, 214, 215, 216),
                            style: BorderStyle.solid,
                            width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SYAIFUL HADI",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Kabag Jaringan & PKA"),
                        Text("Cabang Sei Agul")
                      ]),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 370,
                  height: 150,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/banner.png"),
                        fit: BoxFit.cover,
                      ),
                      //color: const Color(0xFF1650C0),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromARGB(255, 214, 215, 216),
                        style: BorderStyle.solid,
                        width: 2,
                      )),
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Menu Utama",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  MenuUtama(
                      imagePath: "assets/images/person.png", title: "Profil"),
                  MenuUtama(imagePath: "assets/images/data.png", title: "ISM"),
                  MenuUtama(
                      imagePath: "assets/images/unit_produksi.png",
                      title: "Unit"),
                  MenuUtama(
                      imagePath: "assets/images/report.png", title: "Rekap"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Unit Produksi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            const CatatanTerakhir(
                imagePath: "assets/images/kpp.jpg",
                unitProduksi: "Sumur Bor Starban",
                jenisUnit: "Sumur Bor",
                //periodeCatat: "01/2024",
                kapasitas: "12.000 M3"),
            const SizedBox(
              height: 15,
            ),
            const CatatanTerakhir(
                imagePath: "assets/images/lab.jpg",
                unitProduksi: "WTP Karsa",
                jenisUnit: "WTP",
                //periodeCatat: "01/2024",
                kapasitas: "8.000 M3"),
            const CatatanTerakhir(
                imagePath: "assets/images/ME.jpg",
                unitProduksi: "IPA Deli Tua",
                jenisUnit: "IPA",
                //periodeCatat: "01/2024",
                kapasitas: "128.000 M3")
          ],
        ),
      ),
    );
  }


}
