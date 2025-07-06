import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahala/core/widgets/custom_nav_bar.dart';

import '../../../../core/export.dart';
import '../bloc/booking_cubit.dart';
import '../widget/date_widget.dart';
import '../widget/guests_widget.dart';
import '../widget/room_type_widget.dart';

class ChooseBookDetailsPage extends StatefulWidget {
  const ChooseBookDetailsPage({super.key});

  @override
  State<ChooseBookDetailsPage> createState() => _ChooseBookDetailsPageState();
}

class _ChooseBookDetailsPageState extends State<ChooseBookDetailsPage> {
  final List<DateTime?> _selectedDates = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingCubit(),
      child: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const CustomTextWidget(
                text: "Choose Details",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontColor: AppColors.shark950,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 32.h,
                  right: 16.w,
                  left: 16.w,
                  bottom: 28.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextWidget(
                      text: "Complete Your Booking",
                      fontWeight: FontWeight.w600,
                      fontColor: AppColors.shark950,
                      fontSize: 16,
                    ),
                    SizedBox(height: 26.h),
                    const DateWidget(),
                    SizedBox(height: 16.h),
                    GuestsWidget(items: AppListConst.guestsStaticData),
                    SizedBox(height: 16.h),
                    RoomTypeWidget(items: AppListConst.roomTypeStaticData),
                    CustomNavBar(
                      price: "100",
                      section: BottomNavBarEnum.bookDetails,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
