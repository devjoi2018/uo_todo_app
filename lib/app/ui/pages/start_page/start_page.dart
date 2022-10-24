import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/controllers/start_controller.dart';
import 'package:uptodo_app/app/ui/pages/global_widgets/horizontal_large_buttom.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';

class StartPage extends GetView<StartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          header(),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 67),
            child: Column(
              children: [
                HorizontalLargeButtom(
                  color: CustomColor.purpleColor,
                  text: 'INICIAR SESIÓN',
                  onPressed: () {},
                ),
                const SizedBox(height: 28),
                HorizontalLargeButtom(
                  color: CustomColor.purpleColor,
                  text: 'CREAR CUENTA',
                  outline: true,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center header() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 42, right: 42, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Bienvenido a UpTodo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 26),
              child: Text(
                'Por favor inicia sesión con tu cuenta o crea una nueva cuenta para continuar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
