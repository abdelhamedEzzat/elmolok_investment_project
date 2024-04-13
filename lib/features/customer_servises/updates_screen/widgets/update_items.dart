import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatesItems extends StatelessWidget {
  const UpdatesItems({
    super.key,
    required this.mainText,
    required this.discriptionText,
  });

  final String mainText;
  final String discriptionText;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          flex: 3,
          child: Text(
            discriptionText,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
            maxLines: 15,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          mainText,
          style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
