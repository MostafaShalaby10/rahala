import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
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
