import 'package:rahala/features/home/presentation/pages/home_page_details.dart';

import '../../../../core/export.dart';

class TopPickWidget extends StatelessWidget {
  const TopPickWidget({
    super.key,
    required this.items,
    required this.headerText,
  });

  final List<GenericModel> items;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: headerText,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 24.h),
        SizedBox(
          height: 330.h,
          child: ListView.separated(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageDetails(data: items[index]),
                ),
              ),
              child: Container(
                width: 253.w,
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 1, color: AppColors.shark50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.asset(
                              items[index].image!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            right: 10.w,
                            top: 10.w,
                            child: CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 16,

                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 16.h,
                        horizontal: 8.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomTextWidget(text: items[index].title!),
                              const Spacer(),
                              const Icon(
                                Icons.star_rate_rounded,
                                color: AppColors.yellow500,
                              ),
                              CustomTextWidget(text: items[index].rate!),
                            ],
                          ),
                          CustomTextWidget(
                            text: items[index].type!,
                            fontColor: AppColors.shark400,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "BHD ${items[index].price}",
                                  style:  TextStyle(
                                    color: AppColors.red600,  fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                 TextSpan(
                                  text: " / night",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: AppColors.shark400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
