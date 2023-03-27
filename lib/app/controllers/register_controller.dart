import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/data/models/user_models/server_response_message_model.dart';
import 'package:uptodo_app/app/data/provider/data_provider.dart';
import 'package:uptodo_app/app/routes/app_pages.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/alert_dialog_success.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/custom_loading.dart';

class RegisterController extends GetxController {
  /* -------------------------------------------------------------------------- */
  /*                                 CONTROLLERS                                */
  /* -------------------------------------------------------------------------- */
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  /* -------------------------------------------------------------------------- */
  /*                                  VARIABLES                                 */
  /* -------------------------------------------------------------------------- */

  late GlobalKey<FormState> _formKey;
  final DataProvider _dataProvider = Get.find<DataProvider>();
  RxBool enableButton = false.obs;

  /* -------------------------------------------------------------------------- */
  /*                                 LIFECYCLES                                 */
  /* -------------------------------------------------------------------------- */

  @override
  void onInit() {
    super.onInit();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void onClose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.onClose();
  }

  /* -------------------------------------------------------------------------- */
  /*                                   METHODS                                  */
  /* -------------------------------------------------------------------------- */

  /// Este metodo se encarga de realizar la peticion para crear
  /// un usuario en la base de datos
  void submit() async {
    if (enableButton.value) {
      CustomLoading.show();
      ServerResponseMessageModel createUser = await _dataProvider.createUser(userName: userNameController.text, password: passwordController.text);
      CustomLoading.hide();
      AlertDialogSuccess.show(
          message: createUser.message!,
          onPressed: () {
            userNameController.clear();
            passwordController.clear();
            confirmPasswordController.clear();
            Get.offAllNamed(Routes.startPage);
          });
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                   GETTERS                                  */
  /* -------------------------------------------------------------------------- */
  /// Controlador del campo de texto del nombre de usuario
  TextEditingController get userNameController => _userNameController;

  /// Controlador del campo de texto de la contraseña
  TextEditingController get passwordController => _passwordController;

  /// Controlador del campo de texto de la confirmacion de la contraseña
  TextEditingController get confirmPasswordController => _confirmPasswordController;

  /// Key del formulario
  GlobalKey<FormState> get formKey => _formKey;
}
