// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.padding,
      this.height,
      this.borderRadius,
      this.suffixIcon,
      this.normalBorderColor,
      this.prefixIcon,
      this.enabled,
      this.border,
      this.labelText,
      this.hintColor});

  final String hintText;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final BorderRadius? borderRadius;
  final Widget? suffixIcon;
  final Color? normalBorderColor;
  final Widget? prefixIcon;
  final bool? enabled;
  final InputBorder? border;
  final Widget? labelText;
  final Color? hintColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          enabled: enabled ?? true,
          //   labelText: labelText,

          label: labelText,
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(7.0)),
              borderSide: BorderSide(
                  color: normalBorderColor ??
                      ColorManger.buttonColor.withOpacity(0.3))),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 12.0,
          ),
          alignLabelWithHint: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 12.w, color: hintColor ?? Colors.grey),
          border: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ??
                    const BorderRadius.all(
                      Radius.circular(7.0),
                    ),
              ),
        ),
      ),
    );
  }
}
