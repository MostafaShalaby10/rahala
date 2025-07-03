import 'package:rahala/core/export.dart';

class FacilitiesWidget extends StatelessWidget {
  const FacilitiesWidget({super.key, required this.items});
final List<GenericModel> items ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          text: "Great for your stay",
          fontWeight: FontWeight.w600,
          fontColor: AppColors.shark950,
        ),
        SizedBox(height: 8.h),
        const CustomTextWidget(
          text: "Facilities we think you’ll love",
          fontWeight: FontWeight.w400,
          fontColor: AppColors.shark200,
        ),
        SizedBox(height: 16.h),
        Padding(padding: EdgeInsetsGeometry.only(left: 16.w , top: 16.h , right: 10.w  , bottom: 11.h) , child:
        Column(
          spacing: 12.h,
          children: List.generate(
           items.length,
                (index) => Row(
              spacing: 12.w,
              children: List.generate(
                items[index].items!.length,
                    (index2) =>  CustomItem(
                  image:items[index]
                      .items![index2]
                      .image!,
                  title:items[index]
                      .items![index2]
                      .title!,
                ),
              ),
            ),
          ),
        ),
          )
      ],
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.image, required this.title});

  final String image;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 11.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.shark50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(image),
          SizedBox(width: 8.w),
         CustomTextWidget(
           text: title,
           fontColor: AppColors.shark950,
           fontWeight: FontWeight.w400,
           fontSize: 12,
         ),
        ],
      ),
    );
  }
}
