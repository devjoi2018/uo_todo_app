import 'package:get/get.dart';

void responseErrorManagment(Response<dynamic> response) {
  if (response.isOk) {
    if (response.body is Map && response.body != null && response.body['message'] != null && response.body['message'] != '') {
      throw response.body['message'];
    }
  }
}
