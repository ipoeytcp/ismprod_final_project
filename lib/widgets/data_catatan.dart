import 'package:flutter/material.dart';
import 'package:ismprod_final_project/pages/data_meter_view.dart';


class DataISM extends StatefulWidget {
  const DataISM({super.key});

  @override
  State<DataISM> createState() => _DataISMState();
}

class _DataISMState extends State<DataISM> {
  List<String> listName = ["01/2024", "02/2024", "03/2024", "04/2024"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Catatan", style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF1650C0),
      ),
      body: ListView.builder(
        itemCount: listName.length,
        itemBuilder: (context, position) {
          return Container(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                child: Text(
                  listName[position],
                  style: const TextStyle(
                    fontSize: 20
                  ),
                ),
                onTap: (){
                  //print("listName ${listName[position].toString()}");
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => DataMeterView(title: listName[position],)
                      )
                      );
                },
              ));
        },
      ),
    );
  }
}
