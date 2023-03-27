import 'package:get/get.dart';
import 'package:uptodo_app/app/data/models/user_models/server_response_message_model.dart';
import 'package:uptodo_app/app/data/models/user_models/user_model.dart';
import 'package:uptodo_app/app/utils/response_error_managment.dart';

class DataProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://192.168.0.13:8080';
  }

  Future<ServerResponseMessageModel> createUser({required String userName, required String password}) async {
    var url = '/createUser';
    var formData = FormData({
      'name': userName,
      'password': password,
    });
    var response = await post(url, formData);
    return ServerResponseMessageModel.fromJson(response.body);
  }

  Future<UserModel> loginUser({required String userName, required String password}) async {
    var url = '/auth/login';
    var formData = FormData({
      'name': userName,
      'password': password,
    });
    var response = await post(url, formData);
    responseErrorManagment(response);
    return UserModel.fromJson(response.body);
  }
}
