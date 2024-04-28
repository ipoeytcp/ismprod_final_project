import 'package:flutter/material.dart';
import 'package:ismprod_final_project/model/request/unit_produksi_model.dart';
import 'package:ismprod_final_project/services/unit_produksi_service.dart';

class UnitProduksiPage extends StatefulWidget {
  const UnitProduksiPage({super.key});

  @override
  State<UnitProduksiPage> createState() => _UnitProduksiPageState();
}

class _UnitProduksiPageState extends State<UnitProduksiPage> {
  List<UnitProduksiModel> unprod = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    unprod = await UnprodService().fetchDataUnitProduksi();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1650C0),
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        title: const Text(
          "Data Unit Produksi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: unprod.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('${unprod[index].kode_unprod}'),
            subtitle: Text('${unprod[index].nama_unprod}'),
            leading: Container(
              color: Colors.amber,
              width: 60,
              height: 60,
            ),
            
          ),
        ),
      ),
    );
  }
}
