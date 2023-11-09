import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ktshka8/app/data/models/tokens/jwt_model.dart';
import 'package:ktshka8/core/constants.dart';
import 'package:ktshka8/app/data/services/storage_service.dart';
import 'package:ktshka8/app/routes/app_pages.dart';

class AuthService extends GetxService {
  StorageService storageService = Get.find();
  late JWTModel _tokens;
  Dio client = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  bool isLoggedIn = false;

  String? get accessToken => _tokens.accessToken;
  Future<bool> refresh() async {
    print('try refresh');
    try {
      var res = await client.post(ApiEndpoints.refresh, data: _tokens.toJson());
      print(res);
      var tokens = JWTModel.fromJson(res.data);
      await updateTokens(tokens);
      if (res.statusCode == 200) return true;
    } catch (e) {
      print(e);
    }
    isLoggedIn = false;
    return false;
  }

  void logout() {
    isLoggedIn = false;
    storageService.clear();
    _tokens = JWTModel(null, '');
    Get.offNamed(Routes.LOGIN);
  }

  Future<bool> login(String email, String password) async =>
      _auth(email, password, ApiEndpoints.login);

  Future<bool> registration(String email, String password) async =>
      _auth(email, password, ApiEndpoints.registration);

  Future<bool> _auth(String email, String password, String path) async {
    try {
      var response = await client.post(path, data: {
        "email": email,
        "password": password,
      });
      var tokens = JWTModel.fromJson(response.data);
      await updateTokens(tokens);
      if (response.statusCode == 200) return true;
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<void> updateTokens(JWTModel tokens) async {
    _tokens = tokens;
    await storageService.writeRefreshToken(tokens.refreshToken);
  }

  Future<void> tryAutoLogin() async {
    String refreshToken = storageService.getRefreshToken();
    var tokens = JWTModel(null, refreshToken);
    await updateTokens(tokens);
    if (tokens.refreshToken.isEmpty) {
      isLoggedIn = false;
      return;
    } else {
      bool refreshResult = await refresh();
      isLoggedIn = refreshResult;
    }
  }

  Future<AuthService> init() async {
    return this;
  }
}