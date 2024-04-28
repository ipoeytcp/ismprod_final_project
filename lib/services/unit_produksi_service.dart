import 'package:dio/dio.dart';
import 'package:ismprod_final_project/model/request/unit_produksi_model.dart';


class UnprodService {
  Dio dio = Dio();
  static const url = 'http://202.51.212.67:8082/ismprod/api/v1.php?table=unprodList&action=list';

  Future<List<UnitProduksiModel>> fetchDataUnitProduksi() async {
    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Accept': 'aplication/json',
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UnitProduksiModel> unprod =
            List<UnitProduksiModel>.from(data.map((e) => UnitProduksiModel.fromJson(e)));
        return unprod;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
