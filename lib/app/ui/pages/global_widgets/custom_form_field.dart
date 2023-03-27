import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';

class CustomFormField extends GetView {
  final String labelText;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? formFieldController;
  final TextInputType keyboardType;

  const CustomFormField({
    required this.labelText,
    required this.validator,
    required this.keyboardType,
    this.obscureText,
    this.formFieldController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: formFieldController,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CustomColor.errorColor),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CustomColor.errorColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CustomColor.lightGreyColor),
        ),
        label: Text(labelText),
        labelStyle: const TextStyle(color: CustomColor.lightGreyColor),
        floatingLabelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
