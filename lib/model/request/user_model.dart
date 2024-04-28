// ignore_for_file: non_constant_identifier_names

class UserModel {
  final int ID;
  final String nipp;
  final String nama;
  final String unit_kerja;
  final String jabatan;
  final String foto;

  UserModel(
      {required this.ID,
      required this.nipp,
      required this.nama,
      required this.unit_kerja,
      required this.jabatan,
      required this.foto,
      });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      ID: json['ID'],
      nipp: json['nipp'],
      nama: json['nama'],
      unit_kerja: json['unit_kerja'],
      jabatan: json['jabatan'],
      foto: json['foto']);
}
