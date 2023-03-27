import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Crea un alert dialog con getx que tenga un icono de color verde y un texto de color negro
class AlertDialogSuccess {
  /// Muestra un alertDialog de confirmacion el cual nos indica
  /// que todo ha salido bien
  static void show({required String message, required Function() onPressed}) {
    Get.dialog(
      barrierDismissible: false,
      AlertDialog(
        backgroundColor: Colors.transparent,
        content: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70 / 2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: onPressed,
                        child: const Text(
                          'Aceptar',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: -70 / 2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 70 / 2,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
