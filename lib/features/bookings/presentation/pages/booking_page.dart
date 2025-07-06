import 'package:intl/intl.dart';
import 'package:rahala/features/bookings/presentation/widget/booking_info_widget.dart';
import 'package:rahala/features/bookings/presentation/widget/booking_item_card.dart';
import 'package:rahala/features/bookings/presentation/widget/date_of_now.dart';

import '../../../../core/export.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          text: "Bookings",
          fontWeight: FontWeight.w600,
          fontSize: 18,
          fontColor: AppColors.shark950,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            Row(
              spacing: 16.w,
              children: List.generate(
                3,
                (index) => Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 14.h,
                        horizontal: 12.w,
                      ),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColors.red50
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.shark100,
                          width: 1.5,
                        ),
                      ),
                      child: CustomTextWidget(
                        text: index == 0
                            ? "Active"
                            : index == 1
                            ? "Completed"
                            : "Canceled",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontColor: selectedIndex == index
                            ? AppColors.red600
                            : AppColors.shark400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            DateOfNow(),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) => BookingItemCard(
                  status: selectedIndex == 0
                      ? BookingStatusEnum.paid
                      : selectedIndex == 1
                      ? BookingStatusEnum.completed
                      : BookingStatusEnum.cancelled,
                ),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
