import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingInitial());

  static BookingCubit get(context) => BlocProvider.of(context);
  List<DateTime> _selectedDates = [];

  void setSelectedDates(List<DateTime> dates) {
    _selectedDates = dates;
  }

  void clearSelectedDates() {
    _selectedDates.clear();
  }

  List<DateTime> getSelectedDates() {
    emit(successGetSelectedDates());
return    _selectedDates;
  }
}
