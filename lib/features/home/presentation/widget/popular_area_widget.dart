import '../../../../core/export.dart';

class PopularAreaWidget extends StatelessWidget {
  const PopularAreaWidget({super.key, required this.items});

  final List<GenericModel> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(text: "Popular Areas"),
        SizedBox(height: 24.h),
        SizedBox(
          height: 128.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    items[index].image!,
                    fit: BoxFit.fill,
                    width: 128.w,
                    height: 128.h,
                  ),
                ),
                Positioned(
                  bottom: 10.h,
                  child: CustomTextWidget(
                    text: items[index].title!,
                    fontColor: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}
