import 'package:intl/intl.dart';

import '../../../../core/export.dart';

class DateOfNow extends StatefulWidget {
  const DateOfNow({super.key});

  @override
  State<DateOfNow> createState() => _DateOfNowState();
}

class _DateOfNowState extends State<DateOfNow> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              selectedDate = selectedDate.subtract(Duration(days: 1));
            });
          },
          icon: Icon(Icons.arrow_back_ios, size: 13),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.bookingIcon),
              SizedBox(width: 8.w),
              CustomTextWidget(
                text: DateFormat('EEEE. MMMM d, y').format(selectedDate),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              selectedDate = selectedDate.add(Duration(days: 1));
            });
          },
          icon: Icon(Icons.arrow_forward_ios, size: 13),
        ),
      ],
    );
  }
}
