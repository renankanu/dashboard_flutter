import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/views/dashboard_view.dart';
import 'package:web_dashboard_docker/app/modules/home/components/side_menu.dart';
import 'package:web_dashboard_docker/app/utils/responsive.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashboardView(),
            ),
          ],
        ),
      ),
    );
  }
}
