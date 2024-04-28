// ignore_for_file: non_constant_identifier_names

class IsmModel {
  final int ID;
  final String kode_unprod;
  final String jumlah_produksi;
  final String foto_meter;

  IsmModel(
      {required this.ID,
      required this.kode_unprod,
      required this.jumlah_produksi,
      required this.foto_meter,
      });

  factory IsmModel.fromJson(Map<String, dynamic> json) => IsmModel(
      ID: json['ID'],
      kode_unprod: json['kode_unprod'],
      jumlah_produksi: json['jumlah_produksi'],
      foto_meter: json['foto_meter']);
}
