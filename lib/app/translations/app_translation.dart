import 'package:uptodo_app/app/translations/en_us/en_us_translation.dart';
import 'package:uptodo_app/app/translations/es_mx/es_mx_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = <String, Map<String, String>>{
    'en_US': enUS,
    'es_Mx': esMx,
  };
}
