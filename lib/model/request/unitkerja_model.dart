// ignore_for_file: non_constant_identifier_names

class UnitKerjaModel {
  final int ID;
  final String kode_unker;
  final String unit_kerja;

  UnitKerjaModel(
      {required this.ID,
      required this.kode_unker,
      required this.unit_kerja,
      });

  factory UnitKerjaModel.fromJson(Map<String, dynamic> json) => UnitKerjaModel(
      ID: json['ID'],
      kode_unker: json['kode_unker'],
      unit_kerja: json['unit_kerja'],
      );
}
