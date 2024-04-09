// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/features/home/widget/hashtag_for_unit.dart';
import 'package:elmolak_investment_app/features/home/widget/live_tap_widget/chart_of_funded.dart';
import 'package:elmolak_investment_app/features/home/widget/tapbar/title_for_unit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';

class LivedInvestmentDetailsScreen extends StatefulWidget {
  const LivedInvestmentDetailsScreen({Key? key}) : super(key: key);

  @override
  _InvestmentDetailsScreenState createState() =>
      _InvestmentDetailsScreenState();
}

class _InvestmentDetailsScreenState
    extends State<LivedInvestmentDetailsScreen> {
  ScrollController _scrollController = ScrollController();
  bool _showTitle = false;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _showTitle = _scrollController.offset > 125.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showTitle
          ? const CustomAppBar(
              title: Center(
                child: Text("St-139"),
              ),
            )
          : null,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                pinned: false,
                floating: false,
                expandedHeight: 175.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/NYC3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    AllPicOfUnit(
                      selectedIndex: _selectedIndex,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const MainUnitInformation(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const propertyKeysInfo(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const ExpectedReturnWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const AboutThisProperty(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const ListExpintionFinancials(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const InvestmentCalculator(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const PropertyLocation(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const Developer(),
                    SizedBox(
                      height: 60.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h, right: 20.w, left: 20.w),
                child: BottonClick(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  text: StringsManger.investmentNow,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(
                        ConstantsRouteString.firstSelectEmploymentScreens);
                  },
                ),
              )),
        ],
      ),
    );
  }
}

class Developer extends StatelessWidget {
  const Developer({super.key});

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
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "المطور & المدير للعقار",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "ديار للتطوير",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class PropertyLocation extends StatelessWidget {
  const PropertyLocation({super.key});

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
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              StringsManger.propertyLocation,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "دبي , الامارات",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/location.PNG"))),
        ],
      ),
    );
  }
}

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
              LineChartSample2(),
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

class CustomSlider extends StatefulWidget {
  final double value;
  final ValueChanged<double>? onChanged;
  final int divisions;
  final String label;
  final double max;
  final Color? thumbColor;
  final Color? activeColor;
  final String labelText;
  final String ammountText;

  const CustomSlider({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.divisions,
    required this.label,
    required this.max,
    this.thumbColor,
    this.activeColor,
    required this.labelText,
    required this.ammountText,
  }) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double currentSliderValue;

  @override
  void initState() {
    super.initState();
    currentSliderValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: currentSliderValue,
          onChanged: (value) {
            setState(() {
              currentSliderValue = value;
              widget.onChanged?.call(value);
            });
          },
          max: widget.max,
          thumbColor: widget.thumbColor ?? ColorManger.buttonColor,
          activeColor: widget.activeColor ?? ColorManger.buttonColor,
          divisions: widget.divisions,
          label: widget.label,
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.topRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.labelText,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(width: 5),
              Text(
                widget.ammountText,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListExpintionFinancials extends StatelessWidget {
  const ListExpintionFinancials({super.key});

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
          Text(
            "الماليات",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          const ExpansionTileForFinancial(
            icon: Icons.monetization_on,
            title: "المعاملات",
            subtitle: "AED 0.00",
          ),
          SizedBox(
            height: 15.h,
          ),
          const ExpansionTileForFinancial(
            icon: Icons.check_box_sharp,
            title: "العائد",
            subtitle: "AED 0.00",
          )
        ],
      ),
    );
  }
}

class ExpansionTileForFinancial extends StatelessWidget {
  const ExpansionTileForFinancial({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey),
              top: BorderSide(color: Colors.grey),
              left: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey)),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      //padding: const EdgeInsets.all(1.0),
      child: ExpansionTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: ColorManger.buttonColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(icon, color: ColorManger.buttonColor),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 10.sp),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 10.sp),
        ),
      ),
    );
  }
}

class AboutThisProperty extends StatelessWidget {
  const AboutThisProperty({super.key});

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
        children: [
          const AboutThisPropertyItems(
            titleOfPropertyItems: StringsManger.aboutThisProperty,
            subTitleOfPropertyItems:
                " لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم للنص افتراضي يوضع في التصاميم للنص او زر العديد من النصوص الاخرى. لوريم ايبسوم هو نموذج افتراضي يوضع في العديد من النصوص الاخرى العديدالعديد..",
            readMoreOfPropertyItems: "اقرأ المزيد",
          ),
          SizedBox(
            height: 15.h,
          ),
          const AboutThisPropertyItems(
            titleOfPropertyItems: StringsManger.whyYouShouldINVEST,
            subTitleOfPropertyItems:
                " لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم للنص افتراضي يوضع في التصاميم للنص او زر العديد من النصوص الاخرى. لوريم ايبسوم هو نموذج افتراضي يوضع في العديد من النصوص الاخرى العديدالعديد..",
            readMoreOfPropertyItems: "اقرأ المزيد",
          ),
        ],
      ),
    );
  }
}

class AboutThisPropertyItems extends StatelessWidget {
  const AboutThisPropertyItems({
    super.key,
    required this.titleOfPropertyItems,
    required this.subTitleOfPropertyItems,
    required this.readMoreOfPropertyItems,
  });
  final String titleOfPropertyItems;
  final String subTitleOfPropertyItems;
  final String readMoreOfPropertyItems;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          titleOfPropertyItems,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          subTitleOfPropertyItems,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.normal,
          ),
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          readMoreOfPropertyItems,
          style: TextStyle(
            color: ColorManger.buttonColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        )
      ],
    );
  }
}

class ExpectedReturnWidget extends StatelessWidget {
  const ExpectedReturnWidget({
    super.key,
  });

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
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              StringsManger.expctedReturn,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "11.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.work_history,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.pageview,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.local_activity,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.business_center,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
        ],
      ),
    );
  }
}

class ExpectedReturnItems extends StatelessWidget {
  const ExpectedReturnItems({
    super.key,
    required this.titleOfExpectedReturn,
    required this.subtitleOfExpectedReturn,
    required this.iconOfExpectedReturn,
  });
  final String titleOfExpectedReturn;
  final String subtitleOfExpectedReturn;
  final IconData iconOfExpectedReturn;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                titleOfExpectedReturn,
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitleOfExpectedReturn,
                style:
                    TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: ColorManger.buttonColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(iconOfExpectedReturn, color: ColorManger.buttonColor),
          ),
        ],
      ),
    );
  }
}

class propertyKeysInfo extends StatelessWidget {
  const propertyKeysInfo({
    super.key,
  });

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
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(StringsManger.propertyKeyInfo,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 15.h,
          ),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.business,
            titleOfPropertyKey: "سعر مخفض",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.location_on_outlined,
            titleOfPropertyKey: " مشروع التجديد",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.business_center_sharp,
            titleOfPropertyKey: "عائد جذاب",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.checklist,
            titleOfPropertyKey: "زياده سريعه",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class PropertyKeyItems extends StatelessWidget {
  const PropertyKeyItems({
    super.key,
    required this.titleOfPropertyKey,
    required this.subtitleOfPropertyKey,
    required this.iconOfPropertyKey,
  });
  final String titleOfPropertyKey;
  final String subtitleOfPropertyKey;
  final IconData iconOfPropertyKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.end, // Align items to the end (right side)
      children: [
        // Add some space between the icon and text
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.end, // Align text to the end (right side)
          children: [
            Text(
              titleOfPropertyKey,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: ColorManger.buttonColor,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                subtitleOfPropertyKey,
                textDirection: TextDirection.rtl,
                style:
                    TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.w,
        ),
        const SizedBox(width: 8),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: ColorManger.buttonColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(iconOfPropertyKey, color: ColorManger.buttonColor),
        ),
      ],
    );
  }
}

class MainUnitInformation extends StatelessWidget {
  const MainUnitInformation({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      padding: EdgeInsets.only(bottom: 10.h),
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
          SizedBox(height: 10.h),
          const HashTagForUnit(),
          SizedBox(height: 5.h),
          const TitleForUnit(
            unitTitle: "استوديو في برج سنتر بارك ,دبي",
          ),
          const SubTitleOFUnit(),
          SizedBox(height: 10.h),
          const ChartOfFunded(),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              "المدة المتبقية 36 يوم",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class SubTitleOFUnit extends StatelessWidget {
  const SubTitleOFUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "دبي - برج سنتر بارك",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(Icons.flag, size: 10.sp),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class AllPicOfUnit extends StatefulWidget {
  AllPicOfUnit({
    super.key,
    required this.selectedIndex,
  });
  int selectedIndex;
  @override
  State<AllPicOfUnit> createState() => _AllPicOfUnitState();
}

class _AllPicOfUnitState extends State<AllPicOfUnit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemExtent: 100.w,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          double radius = 40.0.w + (widget.selectedIndex - index) * 2.0;
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = index;
              });
            },
            child: CircleAvatar(
              radius: radius,
              backgroundColor: index == widget.selectedIndex
                  ? ColorManger.buttonColor.withOpacity(0.7)
                  : ColorManger.buttonColor.withOpacity(0.2),
              child: CircleAvatar(
                radius: 38.0.w,
                backgroundImage: const AssetImage(
                  'assets/NYC3.jpg',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
