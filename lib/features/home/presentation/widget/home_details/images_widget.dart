import '../../../../../core/export.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          text: "Preview",
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 80.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Image.asset(
              images[index],
              width: 104.w,
              height: 64.h,
              fit: BoxFit.fill,
            ),
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemCount: images.length,
          ),
        ),
      ],
    );
  }
}
