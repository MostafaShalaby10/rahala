

import '../../../../core/export.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return             Stack(
      children: [
        Image.asset(AppImages.hotelImage),
        Padding(
            padding: EdgeInsetsGeometry.only(
              top: 68.h,
              left: 16.w,
              right: 16.w,
            ),
            child: Column(
              children: [
                Row(
mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomTextWidget(
                      textAlign: TextAlign.start,
                      text: "Hello,\nAhmed",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontColor: Colors.white,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: SvgPicture.asset(
                        AppImages.notificationIcon,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.h),
                SearchFormField(controller: controller),
              ],
            )
        ),

      ],
    )
    ;
  }
}
