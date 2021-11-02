import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/views/dashboard_view.dart';
import 'package:web_dashboard_docker/app/modules/home/components/side_menu.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardView(),
            ),
          ],
        ),
      ),
    );
  }
}
