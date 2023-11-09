import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ktshka8/core/constants.dart';

class ApiService extends GetxService {

  Dio get baseClient => Dio(BaseOptions(baseUrl: Constants.baseApiUrl));

  Future<bool> updateTokens() async{
    // var rnd = Random();
    // return rnd.nextBool();
    return false;
  }


  Future<ApiService> init() async {
    return this;
  }

}