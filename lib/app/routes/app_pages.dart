import 'package:get/get.dart';

import 'package:web_page_docker/app/modules/home/bindings/home_binding.dart';
import 'package:web_page_docker/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
