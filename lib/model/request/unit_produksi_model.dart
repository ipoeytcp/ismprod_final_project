// ignore_for_file: non_constant_identifier_names

class UnitProduksiModel {
  final int ID;
  final String kode_unprod;
  final String nama_unprod;
  final String foto_unprod;
  final String foto_meter;


  UnitProduksiModel(
      {required this.ID,
      required this.kode_unprod,
      required this.nama_unprod,
      required this.foto_unprod,
      required this.foto_meter,      
      });

  factory UnitProduksiModel.fromJson(Map<String, dynamic> json) => UnitProduksiModel(
      ID: json['ID'],
      kode_unprod: json['kode_unprod'],
      nama_unprod: json['nama_unprod'],
      foto_unprod: json['foto_unprod'],
      foto_meter: json['foto_meter'],
      );
}
