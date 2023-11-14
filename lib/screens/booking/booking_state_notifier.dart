import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:students/screens/booking/booking_state.dart';

final bookingProvider =
    StateNotifierProvider<BookingStateNotifier, BookingState>((ref) {
  return BookingStateNotifier(ref);
});

class BookingStateNotifier extends StateNotifier<BookingState> {
  BookingStateNotifier(this.ref) : super(BookingState());

  final Ref ref;

  void initData() {
    if (state.date == null) {
      state = state.copyWith(date: DateTime.now());
    }
  }

  void updatePhone(String phoneNumber) {
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void updateDate(DateTime date) {
    state = state.copyWith(
      date: DateTime(date.year, date.month, date.day, state.date?.hour ?? 0,
          state.date?.minute ?? 0),
    );
  }

  void updateTime(TimeOfDay timeOfDay) {
    final currentDate = state.date ?? DateTime.now();
    state = state.copyWith(
      date: DateTime(currentDate.year, currentDate.month, currentDate.day,
          timeOfDay.hour, timeOfDay.minute),
    );
  }

  void updateName(String username) {
    state = state.copyWith(username: username);
  }
}
