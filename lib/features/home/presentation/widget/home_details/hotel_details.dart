
import '../../../../../core/export.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key, required this.data});
final GenericModel data ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomTextWidget(
              text: data.title!,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "BHD ${data.price}",
                    style: TextStyle(
                      color: AppColors.red600,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  TextSpan(
                    text: " / night",
                    style: TextStyle(
                      color: AppColors.shark400,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 18,
              color: AppColors.red600,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: CustomTextWidget(
                textAlign: TextAlign.start,
                text: data.address!,
                fontColor: AppColors.shark400,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h,),
        Row(
          children: [
            Row(
              children: List.generate(
                5,
                    (index) => const Icon(Icons.star, size: 14, color: Colors.amber),
              ),
            ),
            SizedBox(width: 4.w),
            CustomTextWidget(
              text: "(${data.rate!}) ${data.totalReviews!} Reviews",
              fontColor: AppColors.shark400,
            ),

          ],
        ),
        SizedBox(height: 24.h),
        const CustomTextWidget(
          text: "Description",
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 8.h),
        CustomTextWidget(
          textAlign: TextAlign.start,
          text: data.description!,
          fontColor: AppColors.shark500,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
