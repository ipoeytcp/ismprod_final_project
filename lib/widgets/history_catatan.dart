import 'package:flutter/material.dart';
import 'package:ismprod_final_project/pages/detail_page.dart';


class CatatanTerakhir extends StatelessWidget {
  final String imagePath;
  final String unitProduksi;
  final String jenisUnit;
  //final String periodeCatat;
  final String kapasitas;
  const CatatanTerakhir(
      {super.key,
      required this.imagePath,
      required this.unitProduksi,
      required this.jenisUnit,
      //required this.periodeCatat,
      required this.kapasitas});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailPage( 
                        )));
          },
          splashColor: Colors.blue,
          child: Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          unitProduksi,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.holiday_village,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(jenisUnit),
                              //const SizedBox(width: 10,),
                              //const Icon(Icons.calendar_month_rounded, color: Colors.amber,),
                              //const SizedBox(width: 5,),
                              //Text(periodeCatat),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.add_task_rounded,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                kapasitas,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
