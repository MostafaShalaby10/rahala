import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahala/core/export.dart';
import 'package:rahala/features/booking_details/presentation/bloc/booking_cubit.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(
        left: 16.w,
        right: 16.w,
        top: 22.h,
        bottom: 8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,

        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shark700.withOpacity(0.16),
            offset: const Offset(0, 4),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const CustomTextWidget(
            text: "Select Dates",
            fontWeight: FontWeight.w600,
            fontColor: AppColors.shark950,
            fontSize: 16,
          ),
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              dynamicCalendarRows: true,
              calendarType: CalendarDatePicker2Type.range,
              selectedDayHighlightColor: AppColors.red600,
              firstDate: DateTime.now(),
              lastDate: DateTime(2030),
            ),
            value: context.read<BookingCubit>().getSelectedDates(),
            onValueChanged: (dates) => setState(() {
              context.read<BookingCubit>().setSelectedDates(dates);
            }),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                setState(() {
                  context.read<BookingCubit>().clearSelectedDates();
                });
              },
              child: const CustomTextWidget(
                text: "Clear",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontColor: AppColors.red600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
