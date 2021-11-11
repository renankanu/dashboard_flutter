import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
            swapAnimationDuration: const Duration(milliseconds: 150),
            swapAnimationCurve: Curves.linear,
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                const Text("of 128GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
    color: BaseColors.primaryColor,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: BaseColors.cyanAqua,
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: BaseColors.sunglow,
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: BaseColors.alizarinCrimson,
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: BaseColors.primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
