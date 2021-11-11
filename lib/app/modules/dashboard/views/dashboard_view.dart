import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/components/header.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/components/my_files.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/components/recent_files.dart';
import 'package:web_dashboard_docker/app/modules/dashboard/components/storage_details.dart';
import 'package:web_dashboard_docker/app/utils/responsive.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiles(),
                      const SizedBox(height: 16),
                      const RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: 16),
                      if (Responsive.isMobile(context)) const StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context)) const SizedBox(width: 16),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
