import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/controllers/login_controller.dart';
import 'package:uptodo_app/app/routes/app_pages.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/custom_app_bar.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/custom_form_field.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/horizontal_large_buttom.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';
import 'package:uptodo_app/app/utils/validators.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      appBar: CustomAppBar(
        onBack: () {
          Get.offAllNamed(Routes.startPage);
        },
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height - Get.statusBarHeight,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Obx(
              () {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: Text(
                            'Inicio de sesión',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Form(
                          onChanged: () {
                            controller.enableButton.value = controller.formKey.currentState!.validate();
                          },
                          key: controller.formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              _userName(),
                              const SizedBox(height: 24.0),
                              _password(),
                              const SizedBox(height: 24.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        HorizontalLargeButtom(
                            text: 'INICIAR SESIÓN',
                            color: controller.enableButton.value ? CustomColor.secondaryColor : CustomColor.disablePurpleColor,
                            onPressed: () {
                              controller.submit();
                            }),
                        const SizedBox(height: 24),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: '¿No tienes cuenta? ',
                                style: TextStyle(
                                  color: CustomColor.lightGreyColor,
                                ),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(Routes.registerPage);
                                  },
                                text: 'Regístrate',
                                style: const TextStyle(
                                  color: CustomColor.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Metodo que contiene el formField para la contraseña
  Widget _password() {
    return CustomFormField(
      keyboardType: TextInputType.visiblePassword,
      labelText: 'Contraseña',
      formFieldController: controller.passwordController,
      obscureText: true,
      validator: (value) {
        return Validators.passwordValidator(value);
      },
    );
  }

  /// Metodo que contiene el formField para confirmar la contraseña
  Widget _userName() {
    return CustomFormField(
      keyboardType: TextInputType.name,
      labelText: 'Nombre de usuario',
      formFieldController: controller.userNameController,
      validator: (value) {
        return Validators.userNameValidator(value);
      },
    );
  }
}