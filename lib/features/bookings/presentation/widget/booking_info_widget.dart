import '../../../../core/export.dart';

class BookingInfoWidget extends StatelessWidget {
  const BookingInfoWidget({super.key, this.onTap, required this.status});

  final BookingStatusEnum status;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 16.h, horizontal: 8.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Expanded(
                  child: CustomTextWidget(
                    textAlign: TextAlign.start,
                    text: "Espinas\nInternational",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Container(
                  padding: EdgeInsetsGeometry.all(8),
                  decoration: BoxDecoration(
                    color: status == BookingStatusEnum.paid
                        ? AppColors.blue300.withOpacity(.1)
                        : status == BookingStatusEnum.completed
                        ? AppColors.green300.withOpacity(.1)
                        : AppColors.red600.withOpacity(.1),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: CustomTextWidget(
                    text: status == BookingStatusEnum.paid
                        ? "Paid"
                        : status == BookingStatusEnum.completed
                        ? "Completed"
                        : "Canceled",
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    fontColor: status == BookingStatusEnum.paid
                        ? AppColors.blue300
                        : status == BookingStatusEnum.completed
                        ? AppColors.green300
                        : AppColors.red600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: "Date",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontColor: AppColors.shark500,
                ),
                CustomTextWidget(
                  text: "24/12/2024",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontColor: AppColors.shark500,
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: "Order ID",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontColor: AppColors.shark500,
                ),
                CustomTextWidget(
                  text: "1213141516",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontColor: AppColors.shark500,
                ),
              ],
            ),
            SizedBox(height: 12.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: "Type",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontColor: AppColors.shark500,
                ),
                CustomTextWidget(
                  text: "Hotel",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontColor: AppColors.shark500,
                ),
              ],
            ),
            SizedBox(height: 12.h),
            InkWell(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomTextWidget(
                      textAlign: TextAlign.start,
                      text: "See More Details",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontColor: AppColors.red600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.red600,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
