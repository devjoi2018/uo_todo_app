import 'package:get/get.dart';
import 'package:uptodo_app/app/bindings/home_binding.dart';
import 'package:uptodo_app/app/bindings/splash_binding.dart';
import 'package:uptodo_app/app/bindings/start_binding.dart';
import 'package:uptodo_app/app/ui/pages/home_page/home_page.dart';
import 'package:uptodo_app/app/ui/pages/splash_page/splash_page.dart';
import 'package:uptodo_app/app/ui/pages/start_page/start_page.dart';
part './app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage(name: Routes.splashPage, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(name: Routes.startPage, page: () => StartPage(), binding: StartBinding()),
    GetPage(name: Routes.homePage, page: () => HomePage(), binding: HomeBinding()),
  ];
}
