class Validators {
  // Valida si el nombre del usuario es valido
  static String? userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'El nombre de usuario es requerido';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    // Usa expresiones regulares para validar la contraseña con las siguientes reglas:
    // 1. Al menos 8 caracteres
    // 2. Al menos una letra mayúscula
    // 3. No debe contener espacios en blanco
    // 4. No debe estar vacío
    // 5. Al menos un número
    if (value == null || value.isEmpty) {
      return 'La contraseña es requerida';
    } else if (value.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    } else if (value.contains(' ')) {
      return 'La contraseña no debe contener espacios en blanco';
    } else if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'La contraseña debe contener al menos una letra mayúscula';
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      return 'La contraseña debe contener al menos un número';
    }
    return null;
  }

  static String? confirmPasswordValidator(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'La confirmación de la contraseña es requerida';
    } else if (value != password) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }
}
