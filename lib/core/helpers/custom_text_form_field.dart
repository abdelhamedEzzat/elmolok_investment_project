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
      this.hintColor,
      this.maxLines,
      this.minLines,
      this.onChanged,
      this.obscureText,
      this.validator});

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
  final int? maxLines;
  final int? minLines;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      padding: padding,
      child: TextFormField(
        validator: validator,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        minLines: minLines,
        maxLines: maxLines,
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
          contentPadding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),

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
