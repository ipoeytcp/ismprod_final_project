import 'package:dio/dio.dart';
import 'package:ismprod_final_project/model/request/user_model.dart';


class UserService {
  Dio dio = Dio();
  static const url = 'http://202.51.212.67:8082/ismprod/api/v1.php?table=VuserList&action=list';

  Future<List<UserModel>> fetchDataUser() async {
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
        List<UserModel> users =
            List<UserModel>.from(data.map((e) => UserModel.fromJson(e)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
