import '../../../../core/export.dart';
import '../pages/booking_details.dart';
import 'booking_info_widget.dart';

class BookingItemCard extends StatelessWidget {
  const BookingItemCard({super.key, required this.status});
 final BookingStatusEnum status;
  @override
  Widget build(BuildContext context) {
    return             Container(
      height: 250.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12,
            color: AppColors.shark700.withOpacity(.16),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              topLeft: Radius.circular(16.r),
            ),

            child: Image.asset(
              fit: BoxFit.fitHeight,
              AppImages.hotelImage,
              height: MediaQuery.of(context).size.height ,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
          BookingInfoWidget(status: status,onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookingDetails(),
              ),
            );
          },),

        ],
      ),
    )
    ;
  }
}
