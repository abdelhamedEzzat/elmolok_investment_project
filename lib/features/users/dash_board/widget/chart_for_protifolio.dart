import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartForProtifolio extends StatelessWidget {
  const ChartForProtifolio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      padding: EdgeInsets.all(10.h),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
          ]),
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              color: Colors.grey,
              value: 100,
              title: 'محفظتك\n100%',
              titlePositionPercentageOffset: -2,
              titleStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
          centerSpaceRadius: 80,
        ),
      ),
    );
  }
}
