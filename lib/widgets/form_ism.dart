// ignore_for_file: unused_field
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:ismprod_final_project/widgets/text_field.dart';

class FormIsm extends StatefulWidget {
  const FormIsm({super.key});

  @override
  State<FormIsm> createState() => _FormIsmState();
}

class _FormIsmState extends State<FormIsm> {
  List<String> alasanTaksir = ["METER MATI", "METER GEDEG", "METER PECAH"];
  String _alasanTaksir = "METER MATI";

  List<String> unitProduksi = ["SB Mesjid", "SB Kalpataru", "WTP Karsa"];
  String _unitProduksi = "SB Mesjid";

  String _pilihanCatat = "";
  String _alasanKecil = "";

  File? imagefile;
  final imagepicker=ImagePicker;
  
  get picker => null;

  // ignore: non_constant_identifier_names
  void _modeCatat(String Value) {
    setState(() {
      _pilihanCatat = Value;
    });
  }

  void pilihAlasan(String value) {
    setState(() {
      _alasanTaksir = value;
    });
  }

  void pilihUnitProduksi(String value) {
    setState(() {
      _unitProduksi = value;
    });
  }

  void _standKecil(String value) {
    setState(() {
      _alasanKecil = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      //widget bottom navigation bar
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.bookmark), label: "Tersimpan"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      //   ],
      // ),
      appBar: AppBar(
        //widget appbar
        leading: const Icon(
          Icons.list,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF1650C0),
        automaticallyImplyLeading: false,
        title: const Text(
          "Form ISM",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tanggal Catat",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  //hintText: DateFormat.ABBR_MONTH,
                  labelText: DateFormat.yMd().add_jm().format(DateTime.now()),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Periode Rekening",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  //hintText: DateFormat.ABBR_MONTH,
                  labelText: "04/2024",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              //Field Unit Kerja
              const TextFieldIsm(label: "Unit Kerja", hint: "Unit Kerja"),
              //Field Penanggung Jawab
              const TextFieldIsm(
                label: "Penanggung Jawab",
                hint: "Penanggung Jawab",
              ),
              //Field Pilihan Unit Produksi
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Unit Produksi",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold)),
                  DropdownButton(
                    onChanged: (String? value) {
                      pilihUnitProduksi(value!);
                    },
                    value: _unitProduksi,
                    items: unitProduksi.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              //field pilihan catat
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Pilihan Catat",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  value: "Normal",
                  title: const Text("Normal"),
                  groupValue: _pilihanCatat,
                  onChanged: (String? value) {
                    _modeCatat(value!);
                  }),
              RadioListTile(
                  value: "Taksir",
                  title: const Text("Taksir"),
                  groupValue: _pilihanCatat,
                  onChanged: (String? value) {
                    _modeCatat(value!);
                  }),
              //Field pilihan alasasn taksir
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Alasan Taksir",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold)),
                  DropdownButton(
                    onChanged: (String? value) {
                      pilihAlasan(value!);
                    },
                    value: _alasanTaksir,
                    items: alasanTaksir.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              //field Stand awal
              const TextFieldIsm(
                  label: "Stand Awal (ltr)",
                  hint: "Isi Stand Awal dalam Liter"),
              //field stand akhir
              const TextFieldIsm(
                  label: "Stand Akhir (Ltr)",
                  hint: "Isi Stand Akhir dalam liter"),
              //field jumlah produksi
              const TextFieldIsm(
                  label: "Jumla Produksi (Ltr)",
                  hint: "Jumlah Produksi dalam liter"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Alasan Stand Kecil",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  value: "Meter Baru",
                  title: const Text("Meter baru"),
                  groupValue: _alasanKecil,
                  onChanged: (String? value) {
                    _standKecil(value!);
                  }),
              RadioListTile(
                  value: "Meter Reset",
                  title: const Text("Meter Reset"),
                  groupValue: _alasanKecil,
                  onChanged: (String? value) {
                    _standKecil(value!);
                  }),
              //field stand angkat
              const TextFieldIsm(
                  label: "Stand Angkat (Ltr)",
                  hint: "Isi Stand angkat dalam liter"),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: size.width,
                      height: 250,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        color: Colors.blueGrey,
                        strokeWidth: 1,
                        dashPattern: const [5,5],
                        child: SizedBox.expand(
                          child: FittedBox(
                            child: imagefile != null
                            ? Image.file(File(imagefile!.path),
                            fit: BoxFit.cover)
                            : const Icon(Icons.image_outlined,
                            color: Colors.blueGrey,

                            ),
                            ),
                          )),
                    ),
                     Padding(
                      padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey,
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color:  Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                showPictureDialog();
                              },
                              child: const Center(
                                child: Text("Pick Image", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              ),
                          ),
                        ),
                      ),
                      ),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey,
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color:  Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  imagefile = null;
                                });();
                              },
                              child: const Center(
                                child: Text("Hapus Foto", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              ),
                          ),
                        ),
                      ),
                      ),
                  ],
                 ),
              //field keterangan
              const SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Isi Keterangan",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade300,
                      fontStyle: FontStyle.italic),
                  labelText: "Keterangan",
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

Future<void> showPictureDialog() async {
  await showDialog<void>(
    context: context, 
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text("Select Action"),
        children: [
          SimpleDialogOption(
            onPressed: (){
              getFromCamera();
              Navigator.of(context).pop();
            },
            child: const Text("Open Camera"),
          ),
        ],
      );
  });
}

getFromCamera() async {
  final XFile? photo = await ImagePicker().pickImage(
    source: ImageSource.camera,
    maxWidth: 1800,
    maxHeight:1800,
  );
  if (photo != null) {
    setState(() {
      imagefile = File(photo.path);
    });
  }
}
}
