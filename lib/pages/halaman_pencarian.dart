import 'package:flutter/material.dart';

class HalamanPencarian extends StatefulWidget {
  const HalamanPencarian({super.key});

  @override
  State<HalamanPencarian> createState() => _HalamanPencarianState();
}

class _HalamanPencarianState extends State<HalamanPencarian> {
int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Untuk widget bottom navigation barr
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      //   ],),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1650C0),
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        title: const Text(
          "Cari Data",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
     

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
          ],
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

