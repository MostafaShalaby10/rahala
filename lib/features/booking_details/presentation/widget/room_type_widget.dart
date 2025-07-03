import 'package:rahala/core/export.dart';

class RoomTypeWidget extends StatefulWidget {
  const RoomTypeWidget({super.key, required this.items});

  final List<GenericModel> items;

  @override
  State<RoomTypeWidget> createState() => _RoomTypeWidgetState();
}

class _RoomTypeWidgetState extends State<RoomTypeWidget> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(
        left: 16.w,
        right: 16.w,
        bottom: 8.h,
        top: 22.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shark700.withOpacity(0.16),
            offset: const Offset(0, 4),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(
            text: "Room Type",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontColor: AppColors.shark950,
          ),
          SizedBox(height: 14.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: List.generate(
              widget.items.length,
              (index) => RadioListTile(
                title: CustomTextWidget(
                  textAlign: TextAlign.start,
                  text: widget.items[index].title!,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontColor: AppColors.shark950,
                ),
                value: index,
                contentPadding: EdgeInsetsGeometry.zero,
                activeColor: AppColors.red600,
                groupValue: _selectedValue,
                onChanged: (value) => setState(() => _selectedValue = value!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
