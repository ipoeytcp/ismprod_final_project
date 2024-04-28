// ignore_for_file: non_constant_identifier_names

class UnitProduksiModel {
  final int ID;
  final String kode_unprod;
  final String nama_unprod;

  UnitProduksiModel(
      {required this.ID,
      required this.kode_unprod,
      required this.nama_unprod,
      });

  factory UnitProduksiModel.fromJson(Map<String, dynamic> json) => UnitProduksiModel(
      ID: json['ID'],
      kode_unprod: json['kode_unprod'],
      nama_unprod: json['nama_unprod'],
      );
}
