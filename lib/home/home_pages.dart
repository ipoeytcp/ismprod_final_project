import 'package:flutter/material.dart';
import 'package:ismprod_final_project/pages/dashboard.dart';
import 'package:ismprod_final_project/pages/listview_unprod.dart';
import 'package:ismprod_final_project/unit_kerja/unit_kerja.dart';
import 'package:ismprod_final_project/user_page/user_page.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> body = [
    const Dashboard(),
    const UnitKerja(),
    const UnitProduksiPage(),
    const UserPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueAccent,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.blue,
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              
              label: "Beranda",
              activeIcon: Icon(
                Icons.home_outlined,
                color: Colors.blueAccent,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
                color: Colors.blue,
              ),
              label: "Unit Kerja",
              activeIcon: Icon(
                Icons.account_balance_outlined,
                color: Colors.blueAccent,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store,
                color: Colors.blue,
              ),
              label: "Unit Produksi",
              activeIcon: Icon(
                Icons.store_outlined,
                color: Colors.blueAccent,
              )),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              label: "User",
              activeIcon: Icon(
                Icons.person_2_outlined,
                color: Colors.blueAccent,
              ))
        ],
      ),
    );
  }
      void ontap(int index) {
      setState(() {
        currentIndex = index;
      });
    }
}
