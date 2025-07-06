import 'package:rahala/features/wishlists/presentation/widget/wishlist_item_widget.dart';

import '../../../../core/export.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          text: "Wishlists",
          fontWeight: FontWeight.w600,
          fontSize: 18,
          fontColor: AppColors.shark950,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 32.h, horizontal: 16.w),
        child: ListView.separated(
          itemCount: AppListConst.topPickStaticData.length,
          separatorBuilder: (context, index) => SizedBox(height: 24.h),
          itemBuilder: (context, index) =>
              WishlistItemWidget(model: AppListConst.topPickStaticData[index]),
        ),
      ),
    );
  }
}
