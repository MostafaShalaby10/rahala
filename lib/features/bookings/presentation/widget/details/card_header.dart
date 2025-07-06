import '../../../../../core/export.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return                   Row(
      children: [

        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            AppImages.hotelImage,
            width: 88.w,
            height: 88.h,
            fit: BoxFit.cover,
          ),
        ),


        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text:
                    "Hotels"
                    ,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColors.shark500,
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: AppColors.yellow500,
                    size: 18,
                  ),
                  SizedBox(width: 3.w),
                  CustomTextWidget(
                    text: "4.5",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontColor: AppColors.shark400,
                  ),
                  CustomTextWidget(
                    text: "(657)",
                    fontColor: AppColors.shark500,
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CustomTextWidget(
                text: "Espinas International",
                fontWeight: FontWeight.w600,
                fontColor: AppColors.shark950,
                fontSize: 16,
              ),
              SizedBox(height: 8.h),
              CustomTextWidget(text: "Tehran, Iran" , fontColor: AppColors.shark400,)
            ],
          ),
        ),
      ],
    )
    ;
  }
}
