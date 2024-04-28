import 'package:flutter/material.dart';
import 'package:ismprod_final_project/pages/detail_meter.dart';

class LvMeter extends StatelessWidget {
  final String imagePath;
  final String unitproduksi;
  final String periodecatat;
  final String jlhproduksi;
  // ignore: use_super_parameters
  const LvMeter({
    Key? key,
    required this.imagePath,
    required this.unitproduksi,
    required this.periodecatat,
    required this.jlhproduksi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  //anank 1 foto meter
                  Column(
                   children: [
                     Container(
                   width: 90,
                   height: 90,
                   decoration: BoxDecoration(
                       color: Colors.blue,
                       shape: BoxShape.circle,
                       image: DecorationImage(
                           image: AssetImage(imagePath),
                           fit: BoxFit.cover)),
                                    ),
                   ],
                  ),
                  //anak 2 data unit
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // anak 1 nama
                            Text(
                              unitproduksi,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            // anak 2 periode
                            Text(periodecatat, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                            // anak 3 liter
                            Text(jlhproduksi, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
                          ],
                        ),
                        // anak 3 icon
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 125, 162, 236))),
                            onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailMeter()));},
                            child: const Text(
                              "Lihat",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
