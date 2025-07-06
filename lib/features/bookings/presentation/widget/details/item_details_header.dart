import '../../../../../core/export.dart';
import 'card_header.dart';

class ItemDetailsHeader extends StatelessWidget {
  const ItemDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.shark700.withOpacity(0.12),
            offset: const Offset(0, 8),
            blurRadius: 16,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 19.h,
              right: 8.w,
              left: 16.w,
            ),
            child: Column(
              children: [
                CardHeader(),
                Divider(color: AppColors.shark100, height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Order ID",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                    CustomTextWidget(
                      text: "1213141516",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Date",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                    CustomTextWidget(
                      text: "Jan 16 - Jan 20, 2025",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Guests",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                    CustomTextWidget(
                      text: "2 Adults and 1 Child",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Room Type",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                    CustomTextWidget(
                      text: "Standard Room",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "status",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.shark500,
                    ),
                    CustomTextWidget(
                      text: "Paid",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      fontColor: AppColors.blue300,
                    ),
                  ],
                ),
                Divider(color: AppColors.shark100, height: 32.h),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: AppColors.shark500,
                      size: 14,
                    ),
                    SizedBox(width: 4.w),
                    CustomTextWidget(
                      text: "Free cancellation before January 15",
                      fontColor: AppColors.shark500,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.shark100 ,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                )),
            padding: EdgeInsetsGeometry.all(16),
            child: Row(
              children: [
                CustomTextWidget(
                  text: "Total",
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
                CustomTextWidget(
                  text: " (BHD)",
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  fontColor: AppColors.shark500,
                ),
                Spacer(),
                CustomTextWidget(
                  text: "BHD 1500",
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ],
            ),
          ),
        ],
      ),
    )
    ;
  }
}
