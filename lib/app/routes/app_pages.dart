import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/views/dashboard_view.dart';
import 'package:web_dashboard_docker/app/modules/home/bindings/home_binding.dart';
import 'package:web_dashboard_docker/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
