import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rahala/core/utils/app_colors.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({super.key, required this.controller});
final TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: Colors.white,
        boxShadow: [
          const BoxShadow(
            color: AppColors.white50,
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
controller: controller,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search, color: AppColors.white300),
          hintText: "Start Your Search",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            gapPadding: 10,
            borderSide: const BorderSide(width: 1, strokeAlign: 1),
          ),
        ),
      ),
    );
  }
}
