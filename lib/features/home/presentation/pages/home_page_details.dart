import 'package:rahala/core/widgets/custom_nav_bar.dart';
import 'package:rahala/features/home/presentation/widget/home_details/facilities_widget.dart';
import 'package:rahala/features/home/presentation/widget/home_details/header_image.dart';
import 'package:rahala/features/home/presentation/widget/home_details/hotel_details.dart';
import 'package:rahala/features/home/presentation/widget/home_details/images_widget.dart';
import 'package:rahala/features/home/presentation/widget/home_details/verified_reviews.dart';

import '../../../../core/export.dart';

class HomePageDetails extends StatelessWidget {
  const HomePageDetails({super.key, required this.data});

  final GenericModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const CustomTextWidget(
          text: "Details",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 31.h, left: 16.w, right: 16.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderImage(image: data.image!),
              SizedBox(height: 24.h),
              HotelDetails(data: data),
              SizedBox(height: 24.h),
              ImagesWidget(images: data.images!),
              SizedBox(height: 24.h),
              FacilitiesWidget(items: AppListConst.facilitiesStaticData),
              SizedBox(height: 24.h),
              const CustomTextWidget(
                text: "Location",
                fontWeight: FontWeight.w600,
                fontColor: AppColors.shark950,
              ),
              /*
                *
                *
                *
                *
                *
                *
                * Put Map Here
                *
                *
                *
                *
                *
                *  */
              SizedBox(height: 24.h),
              VerifiedReviews(totalReviews: data.totalReviews! , rate: data.rate!) ,
              // CustomNavBar(price: data.price!) // if need to show button in the end of page
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(price: data.price! , section: BottomNavBarEnum.home,), //Fixed Bottom Navigation Bar
    );
  }
}
