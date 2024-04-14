import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildItems extends StatelessWidget {
  const BuildItems({super.key, required this.onTap, this.nameOfButton});
  final void Function() onTap;
  final String? nameOfButton;
  @override
  Widget build(BuildContext context) {
    return BottonClick(
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        onTap: onTap,
        text: nameOfButton ?? StringsManger.next);
  }
}
