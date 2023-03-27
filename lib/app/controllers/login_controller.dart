import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/data/global_memory.dart';
import 'package:uptodo_app/app/data/provider/data_provider.dart';
import 'package:uptodo_app/app/routes/app_pages.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/custom_loading.dart';

class LoginController extends GetxController {
  /* -------------------------------------------------------------------------- */
  /*                                 CONTROLLERS                                */
  /* -------------------------------------------------------------------------- */
  late GlobalKey<FormState> _formKey;
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;

  /* -------------------------------------------------------------------------- */
  /*                                  VARIABLES                                 */
  /* -------------------------------------------------------------------------- */
  RxBool enableButton = false.obs;
  late DataProvider _provider;

  /* -------------------------------------------------------------------------- */
  /*                                 LIFECYCLES                                 */
  /* -------------------------------------------------------------------------- */

  @override
  void onInit() {
    super.onInit();
    _provider = Get.find<DataProvider>();
    _formKey = GlobalKey<FormState>();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  /* -------------------------------------------------------------------------- */
  /*                                   METHODS                                  */
  /* -------------------------------------------------------------------------- */

  void submit() async {
    if (enableButton.value) {
      CustomLoading.show();
      try {
        GlobalMemory.user = await _provider.loginUser(userName: _userNameController.text, password: _passwordController.text);
        CustomLoading.hide();
        Get.offAllNamed(Routes.homePage);
      } catch (e) {
        CustomLoading.hide();
        Get.snackbar('Error', e.toString(), colorText: Colors.white);
      }
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                   GETTERS                                  */
  /* -------------------------------------------------------------------------- */

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get userNameController => _userNameController;

  TextEditingController get passwordController => _passwordController;
}
