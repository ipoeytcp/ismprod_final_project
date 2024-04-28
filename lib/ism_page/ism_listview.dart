import 'package:flutter/material.dart';
import 'package:ismprod_final_project/model/request/ism_model.dart';
import 'package:ismprod_final_project/services/meter_service.dart';
//import 'package:flutter/widgets.dart';

class ListViewIsm extends StatefulWidget {
  const ListViewIsm({super.key});

  @override
  State<ListViewIsm> createState() => _ListViewIsmState();
}

class _ListViewIsmState extends State<ListViewIsm> {
  List<IsmModel> ism = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    ism = await IsmService().fetchDataIsm();
    //print('Jumlahdata: ${ism.length}');
    setState(() {});
  }

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
      body: ListView.builder(
        itemCount: ism.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('${ism[index].kode_unprod}'),
            subtitle: Text('${ism[index].jumlah_produksi}'),
           // leading: Image.network(ism[index].foto),
            
          ),
        ),
      ),
    );
  }
}
