import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/custome_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    ColorManger.buttonColor,
    ColorManger.buttonColor,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 22,
              bottom: 12,
            ),
            child: LineChart(
              showAvg ? avgData() : mainData(),
            ),
          ),
        ),
        SizedBox(
          width: 30,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                fontSize: 12,
                color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    // const style = TextStyle(
    //   fontWeight: FontWeight.bold,
    //   fontSize: 12.sp,
    // );
    Widget text;
    switch (value.toInt()) {
      case 10:
        text = Text('1 سنه',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ));
        break;
      case 8:
        text = Text('2 سنه',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ));
        break;
      case 6:
        text = Text('3 سنه',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ));
        break;
      case 4:
        text = Text('4 سنه',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ));
        break;
      case 2:
        text = Text('5 سنه',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ));
        break;
      default:
        text = Text('',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ));
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '';
        break;
      case 3:
        text = '';
        break;
      case 5:
        text = '';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: ColorManger.buttonColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: ColorManger.buttonColor.withOpacity(0.5),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 5,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 5),
            FlSpot(11, 0),
            // FlSpot(0, 3),
            // FlSpot(2.6, 2),
            // FlSpot(4.9, 5),
            // FlSpot(6.8, 3.1),
            // FlSpot(8, 4),
            // FlSpot(9.5, 3),
            // FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 5), FlSpot(11, 1),
            // FlSpot(0, 3.44),
            // FlSpot(2.6, 3.44),
            // FlSpot(4.9, 3.44),
            // FlSpot(6.8, 3.44),
            // FlSpot(8, 3.44),
            // FlSpot(9.5, 3.44),
            // FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class InvestmentCalculator extends StatefulWidget {
  const InvestmentCalculator({super.key});

  @override
  State<InvestmentCalculator> createState() => _InvestmentCalculatorState();
}

double currentSliderValue = 20;

class _InvestmentCalculatorState extends State<InvestmentCalculator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      padding:
          EdgeInsets.only(bottom: 10.h, top: 10.h, right: 20.w, left: 20.w),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: ColorManger.buttonColor, blurRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Text(
              StringsManger.investmentCalcolator,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Text(
              StringsManger.howMuchCanYouEarnOnThisInvestment,
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 10.h),
          CustomSlider(
              value: currentSliderValue,
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              divisions: 10,
              label: currentSliderValue.round().toString(),
              max: 100,
              labelText: StringsManger.ammountInvested,
              ammountText: "(AED 2000)"),
          SizedBox(height: 5.h),
          CustomSlider(
              value: currentSliderValue,
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              divisions: 10,
              label: currentSliderValue.round().toString(),
              max: 100,
              labelText: StringsManger.expectedAnnualAppreciation,
              ammountText: "(AED 40%)"),
          SizedBox(height: 5.h),
          CustomSlider(
              value: currentSliderValue,
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              divisions: 10,
              label: currentSliderValue.round().toString(),
              max: 100,
              labelText: StringsManger.expectedRentalYield,
              ammountText: "(AED 45%)"),
          SizedBox(height: 5.h),
          CustomSlider(
              value: currentSliderValue,
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              divisions: 10,
              label: currentSliderValue.round().toString(),
              max: 100,
              labelText: StringsManger.investmentHoldingPeriod,
              ammountText: "(5 years )"),
          SizedBox(height: 15.h),
          const AvregeAndTotalReturn(),
          SizedBox(height: 15.h),
          const ExpextedCapitalappreciation(),
          SizedBox(height: 15.h),
          Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  StringsManger.totalExpectedValueAfter5years,
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15.h),
              const LineChartSample2(),
              SizedBox(height: 15.h),
            ],
          )
        ],
      ),
    );
  }
}

class ExpextedCapitalappreciation extends StatelessWidget {
  const ExpextedCapitalappreciation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: const Border(
                  bottom: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey)),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    StringsManger.expextedCapitalappreciation,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(right: 8.w),
                  child: Text(
                    "14.99%",
                    style: TextStyle(
                        fontSize: 10.sp, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: const Border(
                  bottom: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    StringsManger.netRentalIncome,
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "AED 35.095.16",
                    style: TextStyle(
                        fontSize: 10.sp, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AvregeAndTotalReturn extends StatelessWidget {
  const AvregeAndTotalReturn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  StringsManger.averageAnnualizedReturn,
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 8.w),
                child: Text(
                  "14.99%",
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  StringsManger.totalRetutnOnInvestment,
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  "AED 35.095.16",
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
