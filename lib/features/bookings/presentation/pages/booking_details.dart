import 'package:rahala/features/bookings/presentation/widget/details/card_header.dart';
import 'package:rahala/features/bookings/presentation/widget/details/item_details_header.dart';
import 'package:rahala/features/bookings/presentation/widget/details/payment_details.dart';

import '../../../../core/export.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomTextWidget(
          text: "Booking Details",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontColor: AppColors.shark950,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 24.h),
        child:SingleChildScrollView(
          child:  Column(
            children: [
              ItemDetailsHeader(),
              SizedBox(height: 32.h),
              PaymentDetails(),
              SizedBox(height: 70.h),
              SizedBox(
                width: double.infinity,
                child:  OutlinedButton(

                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.h),

                    backgroundColor: Colors.white, // White fill
                    side: BorderSide(color: AppColors.red600), // Red border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Optional: rounded edges
                    ),
                  ),
                  child: CustomTextWidget(
                    text: "Cancel booking",
                    fontColor: AppColors.red600,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
