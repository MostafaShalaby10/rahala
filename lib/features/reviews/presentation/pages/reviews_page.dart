import '../../../../core/export.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(
          text: "All Reviews",
          fontColor: AppColors.shark950,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(
          top: 32.h,
          right: 16.w,
          left: 16.w,
          bottom: 46.h,
        ),
        child: ListView.separated(

          itemBuilder: (context, index) =>
              Review(model: AppListConst.reviewsStaticData[index]),
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemCount: AppListConst.reviewsStaticData.length,
        ),
      ),
    );
  }
}
