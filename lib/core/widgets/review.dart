
import 'package:flutter/gestures.dart';

import '../export.dart';

class Review extends StatefulWidget {
  const Review({super.key, required this.model});

  final GenericModel model;

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final fullText = widget.model.title;
    final showReadMore = fullText!.length > 100;
    final displayText = isExpanded || !showReadMore
        ? fullText
        : fullText.substring(0, 100).trimRight();
    return Container(
      padding: const EdgeInsetsGeometry.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1.5.w, color: AppColors.shark50),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(widget.model.image!, width: 40.w, height: 40.h),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: widget.model.name!,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontColor: AppColors.natural600,
                    ),
                    SizedBox(height: 8.h),
                    CustomTextWidget(
                      text: widget.model.date!,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontColor: AppColors.natural400,
                    ),
                  ],
                ),
              ),

              const Icon(Icons.star, size: 14, color: Colors.amber),
              SizedBox(width: 4.w),
              CustomTextWidget(
                text: widget.model.rate!,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                fontColor: AppColors.natural500,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: displayText,
                  style: TextStyle(
                    color: AppColors.shark500,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (showReadMore)
                  TextSpan(
                    text: !isExpanded ? "...Read more" : "Read less",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => setState(() => isExpanded = !isExpanded),
                    style: TextStyle(
                      color: AppColors.red600,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
