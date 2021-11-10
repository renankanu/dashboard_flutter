import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/components/header.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Header(),
          ],
        ),
      ),
    );
  }
}
