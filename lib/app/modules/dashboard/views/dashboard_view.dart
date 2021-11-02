import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';
import 'package:web_dashboard_docker/app/shared/base_images.dart';

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
            Row(
              children: [
                Text(
                  'Dashboard',
                  style: Get.textTheme.headline6,
                ),
                const Spacer(),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: BaseColors.secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Container(
                        padding: const EdgeInsets.all(16 * 0.75),
                        decoration: BoxDecoration(
                          color: BaseColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.asset(
                          BaseImages.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
