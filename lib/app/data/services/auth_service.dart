import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ktshka8/app/data/models/jwt_model.dart';
import 'package:ktshka8/app/data/services/api_service.dart';
import 'package:ktshka8/app/data/services/storage_service.dart';
import 'package:ktshka8/core/constants.dart';

class AuthService extends GetxService {

  StorageService storageService = Get.find();
  ApiService apiService = Get.find();
  bool isAuth = false;

  Dio client = Dio(BaseOptions(baseUrl: Constants.baseApiUrl));

  Future<void> registration(String mail, String password) async{
    var response = await client.post(ApiEndPoints.registration);
    
    return;
  }

  Future<void> tryAuth() async {
    var refresh = storageService.getRefresh();
    if (refresh != null) {
      bool refreshResult = await apiService.updateTokens();
      isAuth = refreshResult;
    }
    else {
      isAuth = false;
    }
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<AuthService> init() async {
   await tryAuth();
    return this;
  }

}