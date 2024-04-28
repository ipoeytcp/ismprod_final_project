import 'package:get_storage/get_storage.dart';

class AuthStorage {
  final box = GetStorage();

  Future<void> storeCredentialToLocal(String token) async {
    try {
      box.write('data', {'token': token});
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getCredentialFromLocal() async {
    try {
      final storage = box.read('data');
      if (storage != null) {
        final String token = storage['token'];
        return token;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  Future<int> clearStorage() async {
    try {
      await box.erase();
      return 200;
    } catch (e) {
      return 400;
    }
  }
}
