import '../../../../core/export.dart';

class WishlistItemWidget extends StatefulWidget {
  const WishlistItemWidget({super.key, required this.model});
  final GenericModel model ;

  @override
  State<WishlistItemWidget> createState() => _WishlistItemWidgetState();
}

class _WishlistItemWidgetState extends State<WishlistItemWidget> {
  @override
  Widget build(BuildContext context) {
    return             Container(
      padding: EdgeInsetsGeometry.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 8,
            spreadRadius: 0,
            color: AppColors.shark700.withOpacity(.12),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  widget.model.image!,
                  width: 88.w,
                  height: 88.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 8.w,
                top: 8.h,
                child: CircleAvatar(
                  radius: 14.r,
                  backgroundColor: AppColors.white,
                  child: IconButton(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 0,
                      vertical: 0,
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
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
                      widget.model.type!
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
                      text: widget.model.rate!,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontColor: AppColors.shark400,
                    ),
                    CustomTextWidget(
                      text: "(${widget.model.totalReviews!})",
                      fontColor: AppColors.shark500,
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                CustomTextWidget(
                  text: widget.model.title!,
                  fontWeight: FontWeight.w600,
                  fontColor: AppColors.shark950,
                  fontSize: 16,
                ),
                SizedBox(height: 8.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "From",
                        style: TextStyle(
                          color: AppColors.shark500,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: " BHD ${widget.model.price!} ",
                        style: TextStyle(
                          color: AppColors.red600,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      TextSpan(
                        text: "per person",
                        style: TextStyle(
                          color: AppColors.shark500,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
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
