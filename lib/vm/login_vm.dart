import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_menu/helpers/local_storage.dart';
import 'package:one_menu/models/login_model.dart';
import 'package:one_menu/repositories/login_repository.dart';

class LoginVM extends AsyncNotifier<LoginResponseModel> {
  @override
  Future<LoginResponseModel> build() async {
    LoginResponseModel responseModel = const LoginResponseModel();
    responseModel = await getLoginData();
    return responseModel;
  }

  Future<LoginResponseModel> getLoginData() async {
    LoginResponseModel responseModel = const LoginResponseModel();
    try {
      List<Map<String, dynamic>> loginData = await LocalStorage.get(DBTable.login);
      return responseModel = responseModel.copyWith(user: UserModel.fromJson(loginData.first));
    } catch (e) {
      return const LoginResponseModel(message: "getLoginDataError");
    }
  }

  Future<LoginResponseModel> login(LoginModel model) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await LoginRepository.loginUser(model);
      state = AsyncValue.data(responseModel);
      return responseModel;
    } catch (e) {
      state = AsyncValue.error('Failed to login: $e', StackTrace.current);
      return LoginResponseModel(message: "$e", responseCode: 400);
    }
  }
}

final loginVMProvider = AsyncNotifierProvider<LoginVM, LoginResponseModel>(LoginVM.new);
