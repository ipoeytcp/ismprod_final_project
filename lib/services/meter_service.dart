import 'package:dio/dio.dart';
import 'package:ismprod_final_project/model/request/ism_model.dart';


class IsmService {
  Dio dio = Dio();
  static const url = 'http://202.51.212.67:8082/ismprod/api/v1.php?table=ismList&action=list';

  Future<List<IsmModel>> fetchDataIsm() async {
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
        List<IsmModel> ism =
            List<IsmModel>.from(data.map((e) => IsmModel.fromJson(e)));
        return ism;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
