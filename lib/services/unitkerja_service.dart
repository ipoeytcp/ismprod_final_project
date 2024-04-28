import 'package:dio/dio.dart';
import 'package:ismprod_final_project/model/request/unitkerja_model.dart';


class UnkerService {
  Dio dio = Dio();
  static const url = 'http://202.51.212.67:8082/ismprod/api/v1.php?table=unkerList&action=list';

  Future<List<UnitKerjaModel>> fetchDataUnitKerja() async {
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
        List<UnitKerjaModel> unker =
            List<UnitKerjaModel>.from(data.map((e) => UnitKerjaModel.fromJson(e)));
        return unker;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
