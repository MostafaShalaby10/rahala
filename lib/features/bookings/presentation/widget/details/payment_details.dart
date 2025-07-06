
import '../../../../../core/export.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: "Payment Details",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget(
              text: "Subtotal",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontColor: AppColors.shark800,
            ),
            CustomTextWidget(
              text: "BHD 1500",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontColor: AppColors.shark800,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget(
              text: "VAT(10%)",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontColor: AppColors.shark800,
            ),
            CustomTextWidget(
              text: "BHD 10",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontColor: AppColors.shark800,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget(
              text: "Total",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              fontColor: AppColors.shark800,
            ),
            CustomTextWidget(
              text: "BHD 1510",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              fontColor: AppColors.shark800,
            ),
          ],
        ),
      ],
    );
  }
}
