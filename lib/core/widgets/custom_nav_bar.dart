import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahala/core/enums.dart';
import 'package:rahala/core/export.dart';
import 'package:rahala/features/booking_details/presentation/bloc/booking_cubit.dart';
import 'package:rahala/features/booking_details/presentation/pages/book_details.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.price, required this.section});

  final String price;

  final BottomNavBarEnum section;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        bottom: 19.h,
        top: 17.h,
        left: 16.w,
        right: 10.w,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              section == BottomNavBarEnum.home
                  ? RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          const TextSpan(
                            text: "From  ",
                            style: TextStyle(color: AppColors.shark400),
                          ),
                          const TextSpan(
                            text: "BHD150",

                            style: TextStyle(
                              color: AppColors.shark400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    )
                  : CustomTextWidget(
                      text: "Nights × Price/night",
                      fontColor: AppColors.shark400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              section == BottomNavBarEnum.home
                  ? RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "BHD $price  ",
                            style: TextStyle(
                              color: AppColors.red600,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                            ),
                          ),
                          const TextSpan(
                            text: "per person",

                            style: TextStyle(color: AppColors.black),
                          ),
                        ],
                      ),
                    )
                  : RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "Total: ",
                            style: TextStyle(
                              color: AppColors.shark950,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                          TextSpan(
                            text: "BHD$price",

                            style: TextStyle(
                              color: AppColors.red600,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
          const Spacer(),
          section == BottomNavBarEnum.home
              ? MaterialButton(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  color: AppColors.red600,
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 12.h,
                    horizontal: 50.w,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookDetails(),
                      ),
                    );
                  },
                  child: CustomTextWidget(
                    text: "Book now",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontColor: AppColors.white,
                  ),
                )
              : MaterialButton(
            disabledColor: AppColors.shark250,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  color: AppColors.red600,
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 12.h,
                    horizontal: 16.w,
                  ),
                  onPressed: context.read<BookingCubit>().getSelectedDates().isEmpty
                      ? null:(){},

                  child: CustomTextWidget(
                    text: "Continue to Payment",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontColor: AppColors.white,
                  ),
                ),
        ],
      ),
    );
  }
}
