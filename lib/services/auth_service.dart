import 'package:dio/dio.dart';
import 'package:ismprod_final_project/model/request/login_request_model.dart';
import 'package:ismprod_final_project/storage/auth_storage.dart';


class AuthService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/login';

  Future<String> signinWithEmailAndPassword(
      {required LoginRequestModel request}) async {
    try {
      final response = await dio.post(url,
          options: Options(
            headers: {
              'Accept': 'aplication/json',
            },
          ),
          data: request.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        String data = response.data['token'];
        AuthStorage().storeCredentialToLocal(data);

        return data;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
