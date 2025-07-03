import 'package:rahala/features/reviews/presentation/pages/reviews_page.dart';

import '../../../../../core/export.dart';

class VerifiedReviews extends StatelessWidget {
  const VerifiedReviews({
    super.key,
    required this.totalReviews,
    required this.rate,
  });

  final String totalReviews;

  final String rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CustomTextWidget(
              text: "Verified Reviews",
              fontWeight: FontWeight.w600,
              fontColor: AppColors.shark950,
            ),
            SizedBox(width: 4.w),
            CustomTextWidget(
              text: "($totalReviews)",
              fontWeight: FontWeight.w400,
              fontColor: AppColors.shark600,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        TotalReviews(totalReviews: totalReviews, rate: rate),
        SizedBox(height: 16.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>
              Review(model: AppListConst.reviewsStaticData[index]),
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemCount: AppListConst.reviewsStaticData.length,
        ),
        SizedBox(height: 16.h),
        TextButton(
          onPressed: () {
            Navigator.push(context , MaterialPageRoute(builder: (context)=>const ReviewsPage()));
          },
          child: const CustomTextWidget(
            text: "View more",
            fontColor: AppColors.red600,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class TotalReviews extends StatelessWidget {
  const TotalReviews({
    super.key,
    required this.totalReviews,
    required this.rate,
  });

  final String totalReviews;

  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shark700.withOpacity(0.16),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CustomTextWidget(
            text: rate,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontColor: AppColors.shark950,
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(Icons.star, size: 14, color: Colors.amber),
                ),
              ),
              SizedBox(height: 8.h),
              CustomTextWidget(
                text: "Based on $totalReviews Reviews",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontColor: AppColors.shark600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
