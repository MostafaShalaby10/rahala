import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rahala/core/export.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontColor = AppColors.shark950,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.center, this.textScaleFactor,
  });

  final String text;
  final double? fontSize;
  final double? textScaleFactor;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: textScaleFactor,
      text,
      textAlign: textAlign,

      style: TextStyle(
        color: fontColor,
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}
