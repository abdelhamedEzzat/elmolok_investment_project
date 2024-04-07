import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerForTable extends StatelessWidget {
  const CustomContainerForTable({
    super.key,
    required this.alignment,
    this.titleText,
    required this.fontSize,
    this.columnName4,
    this.columnName3,
    this.columnName2,
    this.columnName1,
    this.initText,
    this.thcolumnWid0,
    this.thcolumnWid1,
    this.thcolumnWid2,
    this.thcolumnWid3,
    this.colorOfTableRows,
  });

  final AlignmentGeometry alignment;
  final String? titleText;
  final String? initText;
  final double fontSize;
  final String? columnName4;
  final String? columnName3;
  final String? columnName2;
  final String? columnName1;
  final double? thcolumnWid0;
  final double? thcolumnWid1;
  final double? thcolumnWid2;
  final double? thcolumnWid3;
  final Color? colorOfTableRows;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (titleText != null)
            Container(
              alignment: alignment,
              child: Text(
                titleText!,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          SizedBox(height: 10.h),
          CustomTable(
            columnName4: columnName4 ?? StringsManger.transactionsStuts,
            columnName3: columnName3 ?? StringsManger.financialAmount,
            columnName2: columnName2 ?? StringsManger.financialDate,
            columnName1: columnName1,
            thcolumnWid0: thcolumnWid0 ?? 70.h,
            thcolumnWid1: thcolumnWid1 ?? 60.h,
            thcolumnWid2: thcolumnWid2 ?? 100.w,
            thcolumnWid3: thcolumnWid3 ?? 45.w,
            colorOfTableRows: colorOfTableRows ?? Colors.black,
          ),
          SizedBox(height: 10.h),
          if (initText != null) Text(initText!)
        ],
      ),
    );
  }
}

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
    required this.columnName2,
    required this.columnName3,
    required this.columnName4,
    this.columnName1, // Making columnName1 optional
    this.thcolumnWid0,
    this.thcolumnWid1,
    this.thcolumnWid2,
    this.thcolumnWid3,
    this.colorOfTableRows,
  });

  final double? thcolumnWid0;
  final double? thcolumnWid1;
  final double? thcolumnWid2;
  final double? thcolumnWid3;
  final String? columnName1; // Making columnName1 optional
  final String columnName2;
  final String columnName3;
  final String columnName4;
  final Color? colorOfTableRows;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.dg),
        child: Table(
          border: TableBorder.all(color: Colors.white),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {
            0: FixedColumnWidth(thcolumnWid0 ?? 70.w),
            1: FlexColumnWidth(thcolumnWid1 ?? 60.w),
            2: FlexColumnWidth(thcolumnWid2 ?? 100.w),
            3: FlexColumnWidth(thcolumnWid3 ?? 45.w),
          },
          children: [
            TableRow(
              decoration:
                  BoxDecoration(color: colorOfTableRows ?? Colors.black),
              children: [
                if (columnName1 != null)
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        columnName1!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName3,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName4,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
