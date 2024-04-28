import 'package:flutter/material.dart';
import 'package:ismprod_final_project/model/request/unitkerja_model.dart';
import 'package:ismprod_final_project/services/unitkerja_service.dart';

class UnitKerjaPage extends StatefulWidget {
  const UnitKerjaPage({super.key});

  @override
  State<UnitKerjaPage> createState() => _UnitKerjaPageState();
}

class _UnitKerjaPageState extends State<UnitKerjaPage> {
  List<UnitKerjaModel> unker = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    unker = await UnkerService().fetchDataUnitKerja();
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
          "Data Unit Kerja",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: unker.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('${unker[index].kode_unker}'),
            subtitle: Text('${unker[index].unit_kerja}'),
            //leading: Image.network(users[index].foto),
            
          ),
        ),
      ),
    );
  }
}
