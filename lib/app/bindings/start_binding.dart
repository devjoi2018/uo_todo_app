import 'package:get/get.dart';
import 'package:uptodo_app/app/controllers/start_controller.dart';

class StartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(() => StartController());
  }
}
