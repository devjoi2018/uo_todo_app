import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalLargeButtom extends GetView {
  final String text;
  final Color? textColor;
  final bool? outline;
  final Color color;
  final Function()? onPressed;

  /// Boton que se expande horizontalmente tomando el 100% del ancho de la pantalla,
  /// el boton se puede personalizar para mostrarlo con borde o sin borde.
  const HorizontalLargeButtom({
    required this.text,
    this.textColor,
    required this.color,
    this.outline = false,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  /// Almacena el color por defecto del texto si no se especifica un color.
  final Color _defaultTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    Widget button = outline! ? _outlineButton() : _materialButton();
    return button;
  }

  /// Crea un boton con borde y sin relleno.
  OutlinedButton _outlineButton() {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(Get.width, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: BorderSide(
          color: color,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? _defaultTextColor,
        ),
      ),
    );
  }

  /// Crea un boton con el estilo de material.
  MaterialButton _materialButton() {
    return MaterialButton(
      color: color,
      minWidth: Get.width,
      height: 48,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? _defaultTextColor,
        ),
      ),
    );
  }
}
