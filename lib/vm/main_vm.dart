import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_menu/helpers/local_storage.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/login_model.dart';

class MainVM extends ChangeNotifier {
  UserModel user = const UserModel();
  MainVM() {
    getLoginData();
  }

  getLoginData() async {
    try {
      List<Map<String, dynamic>> loginData = await LocalStorage.get(DBTable.login);
      user = UserModel.fromJson(loginData.first);
    } catch (e) {
      qp(e, "getLoginDataError");
    }
  }
}

final mainVM = ChangeNotifierProvider<MainVM>((ref) => MainVM());
