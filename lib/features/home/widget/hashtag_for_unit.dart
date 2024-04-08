import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HashTagForUnit extends StatelessWidget {
  const HashTagForUnit({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> asd = ["دبي", "سرير واحد", "منزل للاجازه"];
    return Container(
      alignment: Alignment.topRight,
      height: 30.h,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: asd.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 10,
              margin: const EdgeInsets.all(5),
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 1.h, bottom: 1),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    asd[index],
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.home,
                    size: 13.sp,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ],
              )));
        },
      ),
    );
  }
}
