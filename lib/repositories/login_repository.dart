import 'package:one_menu/helpers/api_helper.dart';
import 'package:one_menu/helpers/local_storage.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/login_model.dart';

class LoginRepository {
  static Future<LoginResponseModel> loginUser(LoginModel model) async {
    LoginResponseModel responseModel = const LoginResponseModel();
    try {
      final response = await apiClient.post(ApiHelper.login, model.toJson());
      qp('Login successful: $response');
      responseModel = LoginResponseModel.fromJson(response);
      if (responseModel.responseCode == 200) {
        await LocalStorage.save(DBTable.login, responseModel.user!.toJson());
      }
      return responseModel;
    } catch (e) {
      qp('Login failed: $e');
      return responseModel;
    }
  }
}

final loginBody = {
  'email': 'must@test.com',
  'password': 'password',
};
